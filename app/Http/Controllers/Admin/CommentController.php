<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CommentDetail;
use App\Models\Comments;
use App\Models\Label;
use App\Models\User;
use App\Models\UserComments;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Exception;

class CommentController extends Controller {

    public function dashboard_user_comment(Request $request) {
        $user_id = Auth::user()->id;
        $user_role =  Auth::user()->role_id;
        if($user_role == 1 || $user_role == 2) {
            if($request->isMethod('get')) {
                $comments = Comments::orderBy('comments.updated_time', 'DESC')
                    // ->leftJoin('user_comments', 'comments.id', '=', 'user_comments.comment_id')
                    ->leftJoin('vendors', 'vendors.id', '=', 'comments.lesson_id')
                    ->select('comments.*', 'vendors.name as lesson_name')
                    ->get();
            }
            else if($request->isMethod('post')) {
                $comments = Comments::orderBy('comments.updated_time', 'DESC')
                    // ->leftJoin('user_comments', 'comments.id', '=', 'user_comments.comment_id')
                    ->leftJoin('vendors', 'vendors.id', '=', 'comments.lesson_id')
                    ->leftJoin('comment_detail', 'comment_detail.comment_id', '=', 'comments.id')
                    ->leftJoin('users', 'users.id', '=', 'comment_detail.user_id')
                    ->select('comments.*', 'comment_detail.content as content','comment_detail.path' ,'vendors.name as lesson_name','users.first_name', 'users.last_name')
                    ->where('content', 'like', '%'.$request->searchtext.'%')
                    ->orWhere('first_name','like', '%'.$request->searchtext.'%')
                    ->orWhere('last_name','like', '%'.$request->searchtext.'%')
                    ->orWhere('path','like', '%'.$request->searchtext.'%')
                    ->groupBy('comments.id')
                    ->get();
            }
        } else {

            if($request->isMethod('get')) {
                $comments = Comments::orderBy('comments.updated_time', 'DESC')
                    // ->leftJoin('user_comments', 'comments.id', '=', 'user_comments.comment_id')
                    ->leftJoin('vendors', 'vendors.id', '=', 'comments.lesson_id')
                    ->select('comments.*', 'vendors.name as lesson_name')
                    ->where('comments.user_id', $user_id)
                    ->get();
            }
            else if($request->isMethod('post')) {
                $comments = Comments::orderBy('comments.updated_time', 'DESC')
                    // ->leftJoin('user_comments', 'comments.id', '=', 'user_comments.comment_id')
                    ->leftJoin('vendors', 'vendors.id', '=', 'comments.lesson_id')
                    ->leftJoin('comment_detail', 'comment_detail.comment_id', '=', 'comments.id')
                    ->leftJoin('users', 'users.id', '=', 'comment_detail.user_id')
                    ->select('comments.*', 'comment_detail.content as content','comment_detail.path' ,'vendors.name as lesson_name','users.first_name', 'users.last_name')
                    ->where('comments.user_id', $user_id)
                    ->where('content', 'like', '%'.$request->searchtext.'%')
                    ->orWhere('first_name','like', '%'.$request->searchtext.'%')
                    ->orWhere('last_name','like', '%'.$request->searchtext.'%')
                    ->orWhere('path','like', '%'.$request->searchtext.'%')
                    ->groupBy('comments.id')
                    ->get();
            }
        }

        $userComments = [];
        foreach ($comments as $key => $value) {
            $latestComment = CommentDetail::orderBy('comment_detail.created_time', 'DESC')
                ->leftJoin('users', 'users.id', '=', 'comment_detail.user_id')
                // ->where('comment_detail.user_id', '<>', $user_id)
                ->select('comment_detail.*', 'users.first_name', 'users.last_name', 'users.username', 'users.email', 'users.role_id', 'users.photo')
                ->where('comment_detail.comment_id', '=', $value->id)
                ->first();

                $userComment = array(
                'comments' => $value,
                'last_comment' => $latestComment
            );

            $has_new_comment = UserComments::where('user_id', $user_id)->where('comment_id', $value->id)->pluck('id')->first();
            $userComment['new_comment'] = $has_new_comment ? 1 : 0;

            $userComments[] = $userComment;
        }

        if($request->isMethod('get')) {
            $labels = Label::all();

            return view('admin.comment.index', compact('userComments', 'user_role', 'labels'));
        }
        else if($request->isMethod('post')) {
            return ['data' => $userComments];
        }
    }

    public function add_label(Request $request) {
        try {
            $label = new Label();
            $label->name = $request->name;
            $label->color = $request->color;
            $label->save();
            $labels = Label::all();
            $response = array('data' => $labels);
        } catch(Exception $e) {
            $response = array('error' => $e->getMessage());
        }
        return $response;
    }

    public function del_label(Request $request) {
        try {
            Label::find($request->id)->delete();
            $labels = Label::all();
            $response = array('data' => $labels);
        } catch(Exception $e) {
            $response = array('error' => $e->getMessage());
        }
        return $response;
    }

    public function add_new_comment(Request $request) {
        $data = $request->validate([
            'comment_id' => 'nullable|integer',
            'lesson_id' => 'required',
            'content' => 'required'
        ]);

        $user_id = Auth::user()->id;
        $role_id = Auth::user()->role_id;
        $lesson_id = $data['lesson_id'];
        $content = $data['content'];
        $comment_id = $data['comment_id'];
        $response = array();

        try {
            if (is_null_or_empty($comment_id)) {
                if (in_array($role_id, array(1, 2))) {
                } else if ($role_id != 3) {
                    // add comment
                    $comment_id = Comments::where('user_id', $user_id)->where('lesson_id', $lesson_id)->pluck('id')->first();
                    if (!$comment_id) {
                        $comment_id = DB::table('comments')->insertGetId([
                            'user_id' => $user_id,
                            'lesson_id' => $lesson_id
                        ]);
                    }
                }
            }

            if ($comment_id) {
                // add comment detail
                $cd_id = DB::table('comment_detail')->insertGetId([
                    'user_id' => $user_id,
                    'comment_id' => $comment_id,
                    'content' => $content
                ]);

                // update comment: updated_time
                $updated_time = \Carbon\Carbon::createFromFormat('m d Y H:i A', date('m d Y H:iA'));
                DB::table('comments')->where('id', $comment_id)->update(['updated_time' => $updated_time]);
                $response = array('success' => 'add new comment success.', 'id' => $cd_id, 'time' => show_comment_detail_created_time());

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
            }
        } catch (Exception $e) {
            $response = array('failed' => $e->getMessage());
        }

        return response()->json($response);
    }

}
