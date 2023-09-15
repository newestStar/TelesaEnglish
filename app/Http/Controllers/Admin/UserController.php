<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserRole;
use App\Models\UserCourses;
use App\Models\Course;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use App\Jobs\SendEmail;
use DB;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UserController extends Controller
{
    public function index() {
        if (Auth::user()->role_id == 1) {
            $collection = User::active()->with('role_information')->get();
        } else {
            $role_id = Auth::user()->role_id;
            $collection = User::active()->with('role_information')->where("role_id", ">=", $role_id)->get();
        }
        return view('admin.user.index', ['collection' => $collection]);
    }

    public function view($id)
    {
        // $user = User::where('id',$id)->first();
        $user = User::find($id);
        $UserCourseList = UserCourses::where("user_id",$user->id)->orderBy('id','DESC')->get();
        return view('admin.user.view',compact('user','UserCourseList'));
    }

    public function create()
    {
        if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        $user_roles = UserRole::orderBy('serial','DESC')->get();
        $courses = Course::orderBy('id','DESC')->get();
        //dd($courses);
        return view('admin.user.create',compact('user_roles','courses'));
    }

    public function edit($id)
    {
        if (Auth::user()->role_id==2) {
            dd ("Bạn không có quyền truy cập");
        }
        $user_roles = UserRole::orderBy('serial','DESC')->get();
        $courses = Course::orderBy('id','DESC')->get();
        $user = User::find($id);
        $UserCourseList = UserCourses::where("user_id",$user->id)->orderBy('id','DESC')->get();
        return view('admin.user.edit',compact('user_roles','user','UserCourseList','courses'));
    }

    public function store(Request $request)
    {
        DB::beginTransaction();
        try {

            $this->validate($request,[
                'first_name' => ['required'],
                'last_name' => ['required'],
                'email' => ['required','unique:users'],
                'password' => ['required', 'string', 'min:8', 'confirmed']
            ]);

            $user = new User();
            $user->first_name = $request->first_name;
            $user->last_name = $request->last_name;
            $user->username = $request->email;
            $user->role_id = $request->role_id;
            $user->email = $request->email;
            $user->phone = $request->phone;
            $user->password = Hash::make($request->password);
            $user->created_at = Carbon::now()->toDateTimeString();
            $user->creator = Auth::user()->id;
            $user->save();

            $user->slug = $user->id.uniqid(10);
            $user->save();

            if($request->hasFile('image')){
                $user->photo = Storage::put('uploads/user',$request->file('image'));

                // send mail
                /*
                $message = [
                   'type' => 'Bạn đã đăng ký tài khoản thành công',
                   'username' => 'test',
                   'password' => 'test',
               ];
                $users = User::where('id',$user->id)->get();
                SendEmail::dispatch($message, $users)->delay(now()->addMinute(1));
*/

            }
            $user->save();


            // Thêm khóa học nếu có
            if ($request->course != null) {
                // Xóa thông tin cũ
                $UserCourseList = UserCourses::where("user_id",$user->id)->orderBy('id','DESC')->get();
                foreach ($UserCourseList as $key => $value) {
                    $value->delete();
                }
                foreach ($request->course as $key => $value) {
                    $UserCourse = new UserCourses();
                    $UserCourse->user_id = $user->id;
                    $UserCourse->course_id = $value;
                    $UserCourse->save();
                }
            }
            DB::commit();
            // dd($request->all());
            //function_body
            return redirect()->route('admin_user_view',$user->id);
        } catch (ModelNotFoundException $exception) {
            DB::rollBack();
            return back()->withError($exception->getMessage())->withInput();
        }
    }

    public function update(Request $request)
    {

        $this->validate($request,[
            'first_name' => ['required'],
            'last_name' => ['required'],
            'email' => ['required'],
        ]);

        $user = User::find($request->id);

        if($user->email != $request->email){
            $this->validate($request,[
                'email' => ['required','unique:users'],
            ]);
            $user->email = $request->email;
            $user->username = $request->email;
        }

        if($request->password != null){
            $user->password = Hash::make($request->password);
        }

        $user->first_name = $request->first_name;
        $user->last_name = $request->last_name;
        $user->phone = $request->phone;
        $user->role_id = $request->role_id;
        $user->updated_at = Carbon::now()->toDateTimeString();
        $user->creator = Auth::user()->id;
        $user->save();

        if($request->hasFile('image')){
            if(!file_exists(public_path().'/'.$user->photo)){
                unlink(public_path().'/'.$user->photo);
            }
            $user->photo = Storage::put('uploads/user',$request->file('image'));
            $user->save();
        }

        // Thêm khóa học nếu có
        if ($request->course != null) {
            // Xóa thông tin cũ
            $UserCourseList = UserCourses::where("user_id",$user->id)->orderBy('id','DESC')->get();
            foreach ($UserCourseList as $key => $value) {
                $value->delete();
            }
            foreach ($request->course as $key => $value) {
                $UserCourse = new UserCourses();
                $UserCourse->user_id = $user->id;
                $UserCourse->course_id = $value;
                $UserCourse->save();
            }
        }

        // dd($request->all());
        //function_body
         return redirect()->route('admin_user_view',$user->id);
        // return redirect()->back()->with('success','data updated');
        return $user;
    }

    public function delete(Request $request)
    {
        $user = User::find($request->id);
        $user->status = 0;
        $user->creator = Auth::user()->id;
        $user->save();

        return redirect()->back()->with('success','data deactivated');
    }

    public function test(Request $request)
    {
        //function_body
        return $request->all();
    }

}
