<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\VendorUser;
use App\Models\Vendor;
use App\Models\UserCourses;
use App\Models\CourseLesson;
use App\Models\UserComments;
use Illuminate\Support\Facades\Auth;


class AdminController extends Controller
{
    public function index()
    {
        if (Auth::user()->role_id == 1) {
            return redirect('/admin/product/course');
        } else {
            return redirect('/lessons/courses');
        }
    }

    public function dashboard_index_course()
    {
        $collection = UserCourses::orderBy('id', 'ASC')->where('user_id',Auth::user()->id)->get();
        //$listVendorUser = VendorUser::where('user_id',Auth::user()->id)->get();
        //$lessonDone = count($listVendorUser);
        //$lessonNotYet = count($collection)-$lessonDone;
        return view('admin.lessons.index_course',compact('collection'));
    }

    public function dashboard_index()
    {
        $listCourseUser = UserCourses::orderBy('id', 'ASC')->where('user_id',Auth::user()->id)->get();
        $dataID = [];
        foreach ($listCourseUser as $key => $value) {
            $dataID[] = $value->course_id;
        }

        $collection = CourseLesson::whereIn ('course_id',$dataID)->orderBy('id', 'ASC')->get();
        $listVendorUser = VendorUser::where('user_id',Auth::user()->id)->get();
        $lessonDone = count($listVendorUser);
        $lessonNotYet = count($collection)-$lessonDone;
        return view('admin.dashboard.index',compact('collection','listVendorUser','lessonDone','lessonNotYet'));
    }

    // blank page functions
    public function blade_index()
    {
        return view('admin.blank.index');
    }
    public function blade_create()
    {
        return view('admin.blank.create');
    }
    public function blade_view()
    {
        return view('admin.blank.view');
    }
}
