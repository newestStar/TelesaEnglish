<?php

namespace App\Http\Controllers;

use App\Models\CommentDetail;
use App\Models\Comments;
use App\Models\User;
use App\Models\UserCommentNew;
use App\Models\UserComments;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;
use Log;

class AjaxController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function get_new_comments() {
        if ($user_id = Auth::user()->id) {
            $new_comments = UserComments::orderBy('id', 'ASC')
                ->where('user_id', $user_id)
                ->where('new_comment', 1)
                ->get();
            $count_new = $new_comments->count();
            $count = $count_new > 0 ? $count_new : 0;
            echo json_encode(array('count' => $count));
            exit;
        }
    }

    /**
     * Generate Image upload View
     *
     * @return void
     */
    public function dropzone() {
        return view('dropzone-view');
    }

    /**
     * Image Upload Code
     *
     * @return void
     */
    public function dropzone_store(Request $request) {
        $data = array();
        $validator = Validator::make($request->all(), [
            'file' => 'required|mimes:pdf,doc,docx,xls,xlsx,m4a,flac,mp3,wav,aac,mp4,mov,wmv,avi,mkv,webm,png,jpg,jpeg|max:153600',
            'comment' => 'required',
            'lesson' => 'required'
        ]);

		try {
        if ($validator->fails()) {
            $data['success'] = 0;
            $data['error'] = $validator->errors()->first('file'); // Error response
        } else {
            if ($request->file('file')) {
                $file = $request->file('file');
                $original_filename = $file->getClientOriginalName();
                // $original_filetype = $file->getClientOriginalExtension();
                // $orginal_minetype = $file->getClientMimeType();
                $file_type = '';
                $ext = strtolower(pathinfo($file->getClientOriginalName(), PATHINFO_EXTENSION));
                if (in_array($ext, array('pdf', 'doc', 'docx', 'xls', 'xlsx'))) {
                    $file_type = 2;
                } else if (in_array($ext, array('m4a', 'flac', 'mp3', 'wav', 'aac'))) {
                    $file_type = 3;
                } else if (in_array($ext, array('mp4', 'mov', 'wmv', 'avi', 'mkv', 'webm'))) {
                    $file_type = 4;
                } else if (in_array($ext, array('png', 'jpg', 'jpeg'))) {
                    $file_type = 5;
                }

                $filename = generate_random_string(20) . '-' . $original_filename;
                $lesson_id = $request->get('lesson');
                $comment_id = $request->get('comment');
                // File upload location
                $location = 'uploads/comments/' . $comment_id;
                // Upload file
                $file->move($location, $filename);
                $path = url('/') . '/' . $location . '/' . $filename;

                // insert new comment - type upload file
                // add comment detail
                $cd_id = DB::table('comment_detail')->insertGetId([
                    'user_id' => Auth::user()->id,
                    'comment_id' => $comment_id,
                    'content' => $original_filename,
                    'path' => $path,
                    'type' => $file_type
                ]);

                // update comment: updated_time
                $updated_time = \Carbon\Carbon::createFromFormat('m d Y H:i A', date('m d Y H:iA'));
                DB::table('comments')->where('id', $comment_id)->update(['updated_time' => $updated_time]);

                // add notification
                // delete record in table user_comments.comment_id = $comment_id
                UserComments::where('comment_id', $comment_id)->delete();
                // add new record for notification
                $uc_data = array();
                if (Auth::user()->role_id < 3) { // super admin and teacher
                    $cmt_user_id = Comments::where('id', $comment_id)->pluck('user_id')->first();
                    $uc_data[] = array('user_id' => $cmt_user_id, 'comment_id' => $comment_id);
                    $user_ids = User::where('role_id', '<', 3)->where('id', '<>', Auth::user()->id)->get();
                } else { // student
                    $user_ids = User::where('role_id', '<', 3)->get();
                }
                foreach ($user_ids as $key => $value) {
                    $_data = array(
                        'user_id' => $value->id,
                        'comment_id' => $comment_id
                    );
                    $uc_data[] = $_data;
                }

                UserComments::insert($uc_data);

                // Response
                if($cd_id) {
                    $data['detail_id'] = $cd_id;
                }
                $data['path'] = $path;
                $data['time'] = show_comment_detail_created_time();
                $data['success'] = 1;
                $data['message'] = 'Uploaded Successfully!';
            } else {
                // Response
                $data['success'] = 0;
                $data['message'] = 'File not uploaded.';
            }
        }
        } catch (Exception $e) {
                $data['success'] = 0;
                $data['message'] = 'File not uploaded. ' . $e->getMessage() . ' - ' . $e->getCode();        
        }

        return response()->json($data);
    }

    public function remove_file_uploaded(Request $request) {
        $id = $request->id;
        if ($id) {
            $path = CommentDetail::where('id', $id)->pluck('path')->first();
            if (!is_null_or_empty($path)) {
                $base_url = url('/') . '/';
                $path_file = str_replace($base_url, "", $path);
                // delete file uploaded on server
                if (file_exists(public_path($path_file))) {
                    unlink(public_path($path_file));
                }
                // delete comment detail in DB
                CommentDetail::where('id', $id)->delete();
            }
        }
    }

    public function delete_comment_detail(Request $request) {
        $id = $request->id;
        $user_id = Auth::user()->id;
        if ($id) {
            // delete comment detail in DB
            CommentDetail::where('id', $id)->where('user_id', $user_id)->delete();
        }
    }
}
