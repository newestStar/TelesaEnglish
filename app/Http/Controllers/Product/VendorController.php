<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\CommentDetail;
use App\Models\Comments;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use File;
use App\Models\VendorUser;
use App\Models\Course;
use App\Models\CourseLesson;
use App\Models\FileResources;
use App\Models\UserComments;
use Redirect;

class VendorController extends Controller
{

    public function lesson_index_view($courseId) {
        $collection = CourseLesson::where('course_id', $courseId)->orderBy('sort_order', 'ASC')->orderBy('id', 'ASC')->orderBy('sort_order', 'DESC')->latest()->paginate(10);
        $listVendorUser = VendorUser::where('user_id', Auth::user()->id)->get();

        return view('admin.lessons.index', compact('collection', 'listVendorUser'));
    }



    public function admin_lesson_view($id, $comment_id = null) {
        $nameChat = Auth::user()->first_name . " " . Auth::user()->last_name;
        $emailChat = Auth::user()->email;
        $phoneChat = Auth::user()->phone;

        // check permission to view lesson
        if (Auth::user()->role_id >= 3) {
            $has_permission = CourseLesson::where('lesson_id', $id)
            ->leftJoin('user_courses', 'user_courses.course_id', '=', 'course_lessons.course_id')
            ->where('user_courses.user_id', Auth::user()->id)
                ->pluck('user_courses.id')
                ->first();

            if (is_null_or_empty($has_permission)) {
                return redirect()->route('dashboard_index_course');
            }
        }

        $vendor = Vendor::where('id', $id)->first();
        // remove notification: new comment
        if (!is_null_or_empty($comment_id)) {
            if (Auth::user()->role_id == 2) {
                UserComments::leftJoin('users', 'users.id', '=', 'user_comments.user_id')
                ->where('comment_id', $comment_id)
                    ->where('users.role_id', 2)
                    ->forceDelete();
            } else {
                UserComments::where('comment_id', $comment_id)->where('user_id', Auth::user()->id)->delete();
            }
        }

        if (Auth::user()->role_id > 3 && is_null_or_empty($comment_id)) {
            $comment_id = Comments::where('user_id', Auth::user()->id)->where('lesson_id', $id)->pluck('id')->first();
            if (!is_null_or_empty($comment_id)) {
                return redirect()->route('admin_lesson_view', ['id' => $id, 'comment_id' => $comment_id]);
            }
        }
        $cur_lesson_id = $id;
        $cur_comment_id = '';

        $listComments = $fileInComment = array();
        if (!is_null_or_empty($comment_id)) {
            $listComments = CommentDetail::orderBy('comment_detail.created_time', 'ASC')
                ->leftJoin('comments', 'comments.id', '=', 'comment_detail.comment_id')
                ->leftJoin('users', 'users.id', '=', 'comment_detail.user_id')
                ->select('comment_detail.*', 'users.role_id', 'users.first_name', 'users.last_name', 'users.email', 'users.username')
                ->where('comments.lesson_id', '=', $id)
                ->where('comments.id', '=', $comment_id)
                ->get();

            $fileInComment = CommentDetail::orderBy('comment_detail.created_time', 'ASC')
                ->leftJoin('comments', 'comments.id', '=', 'comment_detail.comment_id')
                ->select('comment_detail.*')
                ->where('comment_detail.type', '>', 1) /* 1: text */
                ->where('comments.lesson_id', '=', $id)
                ->where('comments.id', '=', $comment_id)
                ->get();
            $cur_comment_id = $comment_id;
        }

        return view('admin.lessons.view', compact('vendor', 'nameChat', 'emailChat', 'phoneChat', 'listComments', 'fileInComment', 'cur_comment_id', 'cur_lesson_id'));
    }

    public function index_course($id)
    {
        $collection = CourseLesson::where('lesson_id',$id)->orderBy('id', 'ASC')->latest()->paginate(10);

        return view('admin.product.vendor.index_course',compact('collection'));
    }

    public function destroy_course($courseLessonId)
    {
        $courseLesson = CourseLesson::where('id',$courseLessonId)->first();
        $courseLesson->delete();

        return 'success';
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $collection = Vendor::where('status',1)->orderBy('id', 'ASC')->latest()->paginate(10);
        return view('admin.product.vendor.index',compact('collection'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
         if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        //$listCourse = Course::where('status',1)->get();
        $listAudio = FileResources::where('status',1)->where('type_file','mp3')->get();
        $listFile = FileResources::where('status',1)->where('type_file','pdf')->get();
        $listVideo = FileResources::where('status',1)->where('type_file','mp4')->get();
        return view('admin.product.vendor.create',compact('listAudio','listFile','listVideo'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'name' => ['required'],
            'description' => ['required']
        ]);


        $audio01 = FileResources::where('id',$request->audio01)->first();
        $audio02 = FileResources::where('id',$request->audio02)->first();
        $audio03 = FileResources::where('id',$request->audio03)->first();

        $file01 = FileResources::where('id',$request->file01)->first();
        $file02 = FileResources::where('id',$request->file02)->first();
        $file03 = FileResources::where('id',$request->file03)->first();

        $video01 = FileResources::where('id',$request->video01)->first();
        $video02 = FileResources::where('id',$request->video02)->first();
        $video03 = FileResources::where('id',$request->video03)->first();

        $vendor = new Vendor();

        $vendor->audio01 = isset($audio01) ? $audio01->pathfile : null;
        $vendor->audio02 = isset($audio02) ? $audio02->pathfile : null;
        $vendor->audio03 = isset($audio03) ? $audio03->pathfile : null;

        $vendor->file01 = isset($file01) ? $file01->pathfile : null;
        $vendor->file02 = isset($file02) ? $file02->pathfile : null;
        $vendor->file03 = isset($file03) ? $file03->pathfile : null;

        $vendor->video01 = isset($video01) ? $video01->pathfile : null;
        $vendor->video02 = isset($video02) ? $video02->pathfile : null;
        $vendor->video03 = isset($video03) ? $video03->pathfile : null;


        $vendor->name = $request->name;
        $vendor->description = $request->description;
        //$vendor->course_id = $request->course_id;

        $vendor->save();


        return response()->json([
            'html' => "<option value='".$vendor->id."'>".$vendor->name."</option>",
            'value' => $vendor->id,
        ]);
        // return 'success';
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Vendor $vendor)
    {
         if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        $listAudio = FileResources::where('status',1)->where('type_file','mp3')->get();
        $listFile = FileResources::where('status',1)->where('type_file','pdf')->get();
        $listVideo = FileResources::where('status',1)->where('type_file','mp4')->get();
        return view('admin.product.vendor.edit',compact('vendor','listAudio','listFile','listVideo'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Vendor $vendor)
    {
        $this->validate($request,[
            'name' => ['required'],
            'description' => ['required']
        ]);

        $audio01 = FileResources::where('id',$request->audio01)->first();
        $audio02 = FileResources::where('id',$request->audio02)->first();
        $audio03 = FileResources::where('id',$request->audio03)->first();

        $file01 = FileResources::where('id',$request->file01)->first();
        $file02 = FileResources::where('id',$request->file02)->first();
        $file03 = FileResources::where('id',$request->file03)->first();

        $video01 = FileResources::where('id',$request->video01)->first();
        $video02 = FileResources::where('id',$request->video02)->first();
        $video03 = FileResources::where('id',$request->video03)->first();

        if ($audio01!=null) {
            $vendor->audio01 = isset($audio01) ? $audio01->pathfile : null;
        }
        if ($audio02!=null) {
            $vendor->audio02 = isset($audio02) ? $audio02->pathfile : null;
        }
        if ($audio03!=null) {
            $vendor->audio03 = isset($audio03) ? $audio03->pathfile : null;
        }

        if ($file01!=null) {
            $vendor->file01 = isset($file01) ? $file01->pathfile : null;
        }
        if ($file02!=null) {
            $vendor->file01 = isset($file02) ? $file02->pathfile : null;
        }
        if ($file03!=null) {
            $vendor->file03 = isset($file03) ? $file03->pathfile : null;
        }

        if ($video01!=null) {
            $vendor->video01 = isset($video01) ? $video01->pathfile : null;
        }
        if ($video02!=null) {
            $vendor->video02 = isset($video02) ? $video02->pathfile : null;
        }
        if ($video03!=null) {
            $vendor->video03 = isset($video03) ? $video03->pathfile : null;
        }


        $vendor->name = $request->name;
        $vendor->description = $request->description;
        $vendor->save();

        return 'success';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Vendor $vendor)
    {
         if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        //$path = public_path().'/uploads/lessons/' . $vendor->slug;
        //File::delete($path);
        $vendor->delete();

        return 'success';
    }


    public function store_vendor_user(Request $request){
         if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        $user_id = Auth::user()->id;
        $lesson_id = $request->valueLesson;

        $lessonUser = VendorUser::where('user_id',$user_id)->where('lesson_id',$lesson_id)->first();
        if ($request->has('checkDone')) {
            // Đã học xong
            if ($lessonUser==null) {
                $lessonUser = new VendorUser();
                $lessonUser->user_id = $user_id;
                $lessonUser->lesson_id=$request->checkDone;
                $lessonUser->save();
            }
        }else{
            // Chưa học xong
            if ($lessonUser!=null) {
                $lessonUser->delete();
            }
        }


        return Redirect::back();
    }
}
