<?php

if (!function_exists('get_sub_comment_detail')) {
    function get_sub_comment_detail($comment, $length = 35) {
        if(strlen($comment) <= $length || $length <= 0) {
            return $comment;
        }

        if (mb_substr($comment, $length - 1, 1) == " ") {
            return trim(mb_substr($comment, 0, $length)) . '...';
        } else {
            return get_sub_comment_detail($comment, $length - 1);
        }
    }
}

if (!function_exists('get_comment_detail_classname')) {
    function get_comment_detail_classname($cur_user, $comment_user_id) {
        return ($cur_user == $comment_user_id) ? 'cmt-right' : 'cmt-left';
    }
}

if (!function_exists('generate_comment_created_time')) {
    function generate_comment_created_time($created_time) {
        if (date('Y-m-d') == date('Y-m-d', strtotime($created_time))) {
            $display_time = date('h:i A', strtotime($created_time));
        } else {
            $display_time = date('d-m-Y', strtotime($created_time));
        }
        return $display_time;
    }
}

if (!function_exists('generate_comment_created_datetime')) {
    function generate_comment_created_datetime($created_time) {
        // if (date('Y-m-d') == date('Y-m-d', strtotime($created_time))) {
        //     $display_time = date('h:i A', strtotime($created_time));
        // } else {
        //     $display_time = date('d-m-Y', strtotime($created_time));
        // }
        $display_time = date('H:i d-m-Y', strtotime($created_time));
        return $display_time;
    }
}

if (!function_exists('show_comment_detail_created_time')) {
    function show_comment_detail_created_time($created_time = null) {
        $created_to_time = is_null($created_time) ? time() : strtotime($created_time);
        if (date('Y-m-d') == date('Y-m-d', $created_to_time)) {
            $display_time = date('h:i A', $created_to_time);
        } else {
            $display_time = date('d-m-Y', $created_to_time);
        }
        return $display_time;
    }
}

if (!function_exists('is_null_or_empty')) {
    function is_null_or_empty($value) {
        if (!isset($value)) {
            return true;
        }

        return (is_null($value) || (empty($value) && strlen($value) <= 0));
    }
}

if (!function_exists('generate_random_string')) {
    function generate_random_string($n = 15) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $randomString = '';

        for ($i = 0; $i < $n; $i++) {
            $index = rand(0, strlen($characters) - 1);
            $randomString .= $characters[$index];
        }

        return $randomString;
    }
}

if (!function_exists('get_icon_by_file_type')) {
    function get_icon_by_file_type($type) {
        $icon = "";
        if($type == 2) {
            $icon = "<i class='zmdi zmdi-file-text'</i>";
        } else if($type == 3) {
            $icon = "<i class='zmdi zmdi-file-text'</i>";
        } else if($type == 4) {
            $icon = "<i class='zmdi zmdi-file-text'</i>";
        } else if($type == 5) {
            $icon = "<i class='zmdi zmdi-file-text'</i>";
        }

        return $icon;
    }
}
