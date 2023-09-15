<?php

namespace App\Http\Controllers\Product;

use App\Http\Controllers\Controller;
use App\Models\Vendor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use File;
use App\Models\VendorUser;
use App\Models\Course;
use App\Models\CourseLesson;
use App\Models\CategoryCourses;
use App\Models\FileResources;
use Redirect;

class CourseController extends Controller
{

    public function syncdata($id){
        echo "okie";die();
        $listLesson = Vendor::where('status',1)->get();
        // Cập nhật vào file
        foreach ($listLesson as $key => $value) {
            if ($value->audio01 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."mp3_01";
                $fileResource->pathfile = $value->audio01;
                $fileResource->type_file = "mp3";
                $fileResource->save();
            }
            if ($value->audio02 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."mp3_02";
                $fileResource->pathfile = $value->audio02;
                $fileResource->type_file = "mp3";
                $fileResource->save();
            }
            if ($value->audio03 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."mp3_03";
                $fileResource->pathfile = $value->audio03;
                $fileResource->type_file = "mp3";
                $fileResource->save();
            }

            if ($value->file01 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."file_01";
                $fileResource->pathfile = $value->file01;
                $fileResource->type_file = "pdf";
                $fileResource->save();
            }
            if ($value->file02 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."file02";
                $fileResource->pathfile = $value->file02;
                $fileResource->type_file = "pdf";
                $fileResource->save();
            }
            if ($value->file03 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."file03";
                $fileResource->pathfile = $value->file03;
                $fileResource->type_file = "pdf";
                $fileResource->save();
            }

            if ($value->video01 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."video01";
                $fileResource->pathfile = $value->video01;
                $fileResource->type_file = "mp4";
                $fileResource->save();
            }
            if ($value->video02 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."video02";
                $fileResource->pathfile = $value->video02;
                $fileResource->type_file = "mp4";
                $fileResource->save();
            }
            if ($value->video03 != null) {
                $fileResource = new FileResources();
                $fileResource->name = $value->name."-"."video03";
                $fileResource->pathfile = $value->video03;
                $fileResource->type_file = "mp4";
                $fileResource->save();
            }

            // Thêm lesson vào khóa học
            //$coureLesson = new CourseLesson();
            //$coureLesson->course_id = 1;
            //$coureLesson->lesson_id = 
        }
    }

    public function syncdataCourse($id){
        echo "okie";die();
        $listLesson = Vendor::where('status',1)->get();
        // Cập nhật vào file
        foreach ($listLesson as $key => $value) {
            
             //Thêm lesson vào khóa học
            $coureLesson = new CourseLesson();
            $coureLesson->course_id = 1;
            $coureLesson->lesson_id = $value->id;
            $coureLesson->save();
        }
    }

    public function addLesson($courseId){

        $listLesson = Vendor::where('status',1)->orderBy('id', 'ASC')->get();
        $listCourseLesson = CourseLesson::where('course_id',$courseId)->orderBy('sort_order', 'ASC')->orderBy('id', 'ASC')->get();
        return view('admin.product.course.add-lesson',compact('listLesson','listCourseLesson','courseId'));
    }

    public function addLesson_bk($courseId){

        $listLesson = Vendor::where('status',1)->orderBy('id', 'ASC')->get();
        $listCourseLesson = CourseLesson::get();
        foreach ($listCourseLesson as $key => $value) {
            $value->sort_order = $value->id;
            $value->save();
        }

        echo "------";die();
        return view('admin.product.course.add-lesson',compact('listLesson','listCourseLesson','courseId'));
    }

    public function storeAddLesson(Request $request)
    {
        // Xóa các lesson đã tồn tại nếu có
        $CourseLessonList = CourseLesson::where("course_id",$request->course_id)->get();
        if ($CourseLessonList!=null) {
            foreach ($CourseLessonList as $key => $value) {
                $value->delete();
            }
        }
        // Thêm lesson mới nếu có
        if (isset($request->lessons)) {
            if (count($request->lessons)>0) {
                foreach ($request->lessons as $key => $value) {
                    if ($value!=null) {
                        $CourseLesson = new CourseLesson();
                        $CourseLesson->course_id = $request->course_id;
                        $CourseLesson->lesson_id = $value;
                        $CourseLesson->save();
                        $CourseLesson->sort_order = $CourseLesson->id;
                        $CourseLesson->save();
                    }
                }
            }
        }

        return response()->json([
            'html' => "<option value='".$request->course_id."'>".$request->course_id."</option>",
            'value' => $request->course_id,
        ]);
        // return 'success';
    }

    public function store_sort_lesson(Request $request)
    {
        $lessonId = $request->lessonId;
        $sortOrder = $request->sort;

        $CourseLesson = CourseLesson::find($lessonId);
        $CourseLesson->sort_order = $sortOrder;
        $CourseLesson->save();

        return redirect('/admin/product/course/add-lesson/'.$CourseLesson->course_id);
    }
    
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $collection = Course::where('status',1)->orderBy('id', 'ASC')->latest()->paginate(10);
        return view('admin.product.course.index',compact('collection'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categoryCourse = CategoryCourses::where('status',1)->get();
        return view('admin.product.course.create',compact('categoryCourse'));
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
            'category' => ['required']
        ]);


        $course = new Course();



        $course->name = $request->name;
        $course->category_id = $request->category;
        $course->status = 1;
        $course->save();
        

        return response()->json([
            'html' => "<option value='".$course->id."'>".$course->name."</option>",
            'value' => $course->id,
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
    public function edit(Course $course)
    {
        $categoryCourse = CategoryCourses::where('status',1)->get();
        return view('admin.product.course.edit',compact('course','categoryCourse'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Course $course)
    {
        $this->validate($request,[
            'name' => ['required'],
            'category' => ['required']
        ]);


        $course->name = $request->name;
        $course->category_id = $request->category;
        $course->save();

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
        //$path = public_path().'/uploads/lessons/' . $vendor->slug;
        //File::delete($path);
        $vendor->delete();

        return 'success';
    }


    public function store_vendor_user(Request $request){

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
