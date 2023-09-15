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

class CategoryCourseController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $collection = CategoryCourses::where('status',1)->orderBy('id', 'ASC')->latest()->paginate(10);
        return view('admin.product.category-course.index',compact('collection'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.product.category-course.create');
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
            'name' => ['required']
        ]);


        $categoryCourses = new CategoryCourses();



        $categoryCourses->name = $request->name;
        $categoryCourses->status = 1;
        $categoryCourses->save();
        

        return response()->json([
            'html' => "<option value='".$categoryCourses->id."'>".$categoryCourses->name."</option>",
            'value' => $categoryCourses->id,
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
    public function edit($id)
    {
        $category = CategoryCourses::find($id);
        return view('admin.product.category-course.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request)
    {

        
        $this->validate($request,[
            'name' => ['required']
        ]);

        $categoryCourse = CategoryCourses::find($request->id);

        $categoryCourse->name = $request->name;
        $categoryCourse->save();

        return 'success';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(CategoryCourses $categoryCourse)
    {
        //$path = public_path().'/uploads/lessons/' . $vendor->slug;
        //File::delete($path);
        $categoryCourse->delete();

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
