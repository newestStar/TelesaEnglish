<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Jobs\SendEmail;
use DB;
use Illuminate\Http\Response;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use App\Models\User;

class ApiController extends Controller
{
    // App02 Register
    public function register_user_json(Request $request){
    	DB::beginTransaction();
    	try {


    		$key = 'marketplacettcntt1234$';

            $firstName = isset($request['firstName']) ? $request['firstName'] : null;
            $lastName = isset($request['lastName']) ? $request['lastName'] : null;
            $email = isset($request['email']) ? $request['email'] : null;
            $phone = isset($request['phone']) ? $request['phone'] : null;
            $token = isset($request['token']) ? $request['token'] : null;
            
            if (!isset($firstName) || $firstName == null) {
                throw new ModelNotFoundException('Điền 2 ô họ và tên',503);
            }
            if (!isset($lastName) || $lastName == null) {
                throw new ModelNotFoundException('Điền 2 ô họ và tên',503);
            }
            if (!isset($phone) || $phone == null) {
                throw new ModelNotFoundException('Điền số điện thoại của bạn',503);
            }
            if (!isset($email) || $email == null) {
                throw new ModelNotFoundException('Điền email của bạn',503);
            }

            // STEP 01 = Khởi tạo user
            $users = User::where('email',$email)->get();
            if (count($users) <= 0) {
            	$user = new User();
	            $user->first_name = $firstName;
	            $user->last_name = $lastName;
	            $user->username = explode("@", $email)[0];
	            $user->role_id = 4;
	            $user->email = $email;
	            $user->phone = $phone;
	            $user->password = Hash::make($request->password);
	            $user->created_at = Carbon::now()->toDateTimeString();
	            $user->creator = null;
	            $user->save();

	            $user->slug = $user->id.uniqid(10);
	            $user->save();
            }

            // genarate link video
            $startTime = date("YmdHis");
            $expire = date('YmdHis',strtotime('+1440 minutes',strtotime($startTime)));

            $linkvideo = "http://api.telesaenglish.com/public/view-lesson-trial?token=".$expire;
			// Send Email
			$message = [
			       'type' => 'Bạn đã đăng ký tài khoản thành công',
			       'username' => $email,
			       'password' => md5(time()),
                   'linkvideo' => $linkvideo
			   ];
			$statusSendMail = SendEmail::dispatch($message, $email)->delay(now()->addMinute(1));
			
            $reponse = array();

            $reponse['status'] = 200;
            $reponse['message'] = "Đăng ký thành công!";
            DB::commit();
         	return response()->json($reponse, Response::HTTP_OK);

        }  catch (ModelNotFoundException $exception) {
        	DB::rollBack();
            $reponse['status'] = $exception->getCode();
            $reponse['message'] = $exception->getMessage();
            return response()->json($reponse, Response::HTTP_OK);
        }
        

    }
}
