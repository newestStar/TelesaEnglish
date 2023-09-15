@extends('admin.layouts.admin_lesson')

@section('content')
<style>
    .card .table td,
    .card .table th {
        white-space: break-spaces;
    }
</style>
<link href="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.0.1/min/dropzone.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/dropzone/4.2.0/min/dropzone.min.js"></script>

<div class="content-wrapper @if(Auth::user()->role_id == 2) teacher-view-lesson @endif">
    <div class="container-fluid">
        @include('admin.includes.bread_cumb',['title'=>'Bài học: '. $vendor->name])

        <div class="row">
            <div class="view-lesson col-12 @if(Auth::user()->role_id == 1) col-lg-6 col-xl-6 @else col-lg-8 col-xl-8 @endif">
                <div class="card section-lesson">
                    <div class="card-header">Video</div>
                    <div class="card-body">
                        @if($vendor->video01 != null)
                        <video controls width="100%" controlsList="nodownload">
                            <source src="{{url('/'.$vendor->video01)}}">
                        </video>
                        <br><br>
                        @endif
                        @if($vendor->video02 != null)
                        <video controls width="100%" controlsList="nodownload">
                            <source src="{{url('/'.$vendor->video02)}}">
                        </video>
                        <br><br>
                        @endif
                        @if($vendor->video03 != null)
                        <video controls width="100%" controlsList="nodownload">
                            <source src="{{url('/'.$vendor->video03)}}">
                        </video>
                        @endif
                    </div>
                </div>
            </div>

            <div class="view-comment-file col-12 @if(Auth::user()->role_id == 1) col-lg-6 col-xl-6 @else col-lg-4 col-xl-4 @endif">
                <div class="card section-comment-file">
                    <div class="tabpanel">
                        <!-- Nav tabs -->
                        <ul id="lessonTabs" class="nav nav-tabs col-sm-12" role="tablist">
                            @if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 )
                            <li id="lessonTabComment" role="presentation" class="col-sm-6 col-xs-12 tab-active">
                                <a href="#tab-comment" aria-controls="#tab-comment" class="active" role="tab" data-toggle="tab">Comment</a>
                            </li>
                            @endif
                            <li id="lessonTabFile" role="presentation" class="col-xs-12 @if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 ) col-sm-6 @else col-sm-12 tab-active no-tab-cmt @endif">
                                <a href="#tab-files" aria-controls="#tab-files" role="tab" data-toggle="tab">Files</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content lesson-tab-content">
                            @if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 )
                            <div role="tabpanel" class="tab-pane active" id="tab-comment">
                                <div class="table-responsive lesson-user-comment">
                                    <div id="userCommentDetails" class="user-comment-list useselecttext">
                                        @if ($listComments)
                                        @foreach ($listComments as $k => $detail)
                                        <div @if (Auth::user()->id == $detail->user_id) id="cmtDetail_{{ $detail->id }}" data-id="{{ $detail->id }}" @endif class="user-comment-item {{ get_comment_detail_classname(Auth::user()->id, $detail->user_id) }}">
                                            @if (Auth::user()->id != $detail->user_id)
                                            <div class="comment-username">
                                                <span>@if(Auth::user()->role_id < 3) {{ trim($detail->first_name . ' ' . $detail->last_name) }} @else Telesa English @endif</span>
                                            </div>
                                            @endif
                                            <div class="comment-detail">
                                                @if($detail->type == 2)
                                                <div class="preview-file"><i class="zmdi zmdi-file"></i></div>
                                                @elseif($detail->type == 3)
                                                <div class="preview-file"><i class="zmdi zmdi-file"></i></div>
                                                @elseif($detail->type == 4)
                                                <div class="preview-file"><i class="zmdi zmdi-file"></i></div>
                                                @elseif($detail->type == 5)
                                                <div class="preview-image"><a href="{{ $detail->path }}" target="_blank">
                                                        <div class="bg-preview-image" style="background-image: url('{{ $detail->path }}')"></div>
                                                    </a></div>
                                                @endif

                                                @if($detail->type > 1)
                                                <span><a href="{{ $detail->path }}" target="_blank">{{ $detail->content }}</a></span>
                                                @else
                                                <span>{{ $detail->content }}</span>
                                                @endif
                                            </div>
                                            @if (Auth::user()->id == $detail->user_id)
                                            <div id="delCmt_{{ $detail->id }}" data-id="{{ $detail->id }}" class="hide btn-delcmt" style="display: none;"><i class="zmdi zmdi-delete"></i></div>
                                            @endif
                                        </div>
                                        <div @if (Auth::user()->id == $detail->user_id) id="cmtTime_{{ $detail->id }}" @endif class="comment-time {{ get_comment_detail_classname(Auth::user()->id, $detail->user_id) }}">
                                            <span>{{ show_comment_detail_created_time($detail->created_time) }}</span>
                                        </div>
                                        @endforeach
                                        @endif
                                    </div>
                                    <div class="user-comment-box">
                                        <div class="cmt-message-copy" onclick="globalScripts.copy_to_clipboard('userCommentDetails')">
                                            <i class="zmdi zmdi-copy"></i>
                                        </div>
                                        <div class="cmt-message-file">
                                            <i class="zmdi zmdi-attachment-alt"></i>
                                        </div>
                                        <div class="cmt-message-box">
                                            <input id="inputUserComment" name="content" type="text" class="cmt-message-input" value="" placeholder="">
                                        </div>
                                        <div class="cmt-message-send">
                                            <button id="sendUserComment" class="btn btn-send-comment" type="button" data-comment="{{ $cur_comment_id }}" data-lesson="{{ $cur_lesson_id }}"><i class="zmdi zmdi-mail-send"></i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            @endif
                            <div role="tabpanel" class="tab-pane @if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 ) @else active no-tab-cmt @endif" id="tab-files">
                                <div class="table-responsive">
                                    <table class="table align-items-center">
                                        <tbody>
                                            @if($vendor->file01 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-white mr-2"></i> File 01</td>
                                                <td><a href="{{url('/'.$vendor->file01)}}" target="_blank"><i class="zmdi zmdi-case-download"></i> <span>Tài liệu 01</span></a></td>
                                            </tr>
                                            @endif
                                            @if($vendor->file02 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-white mr-2"></i> File 02</td>
                                                <td><a href="{{url('/'.$vendor->file02)}}" target="_blank"><i class="zmdi zmdi-case-download"></i> <span>Tài liệu 02</span></a></td>
                                            </tr>
                                            @endif

                                            @if($vendor->file03 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-white mr-2"></i> File 03</td>
                                                <td><a href="{{url('/'.$vendor->file03)}}" target="_blank"><i class="zmdi zmdi-case-download"></i> <span>Tài liệu 03</span></a></td>
                                            </tr>
                                            @endif

                                            @if($vendor->audio01 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-light-2 mr-2"></i>Audio 01</td>
                                                <td>
                                                    <audio controls controlsList="nodownload">
                                                        <source src="{{url('/'.$vendor->audio01)}}" type="audio/mpeg">
                                                    </audio>
                                                </td>
                                            </tr>
                                            @endif

                                            @if($vendor->audio02 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-light-2 mr-2"></i>Audio 02</td>
                                                <td><audio controls controlsList="nodownload">
                                                        <source src="{{url('/'.$vendor->audio02)}}" type="audio/mpeg">
                                                    </audio></td>
                                            </tr>
                                            @endif

                                            @if($vendor->audio03 != null)
                                            <tr>
                                                <td><i class="fa fa-circle text-light-2 mr-2"></i>Audio 03</td>
                                                <td><audio controls controlsList="nodownload">
                                                        <source src="{{url('/'.$vendor->audio03)}}" type="audio/mpeg">
                                                    </audio>
                                                </td>
                                            </tr>
                                            @endif
                                        </tbody>
                                    </table>
                                    @if($fileInComment && sizeof($fileInComment) > 0)
                                    <div class="comment-files">
                                        <h5>In Comment</h5>
                                        @foreach($fileInComment as $k => $file)
                                        <div class="comment-file">
                                            <a class="cmt-file" title="{{$file->content}}" alt="{{$file->content}}" href="{{$file->path}}" target="_blank">
                                                @if($file->type == 2)
                                                <i class="zmdi zmdi-file-text"></i>
                                                @elseif($file->type == 3)
                                                <i class="zmdi zmdi-speaker"></i>
                                                @elseif($file->type == 4)
                                                <i class="zmdi zmdi-movie"></i>
                                                @elseif($file->type == 5)
                                                <i class="zmdi zmdi-image-o"></i>
                                                @endif
                                                {{get_sub_comment_detail($file->content)}}
                                            </a>
                                        </div>
                                        @endforeach
                                    </div>
                                    @endif
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div><!--End Row-->

        <!--start overlay-->
        <div class="overlay"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->
</div>
@if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 )
<div id="uploadCommentFile" class="upload-file-form hide" style="display: none;">
    <div class="form-container">
        <div class="form-header">
            <div class="form-title">Uploading a new file</div>
            <div class="form-close-btn"><i data-target="uploadCommentFile" class="zmdi zmdi-close btn-close"></i></div>
        </div>
        <div class="form-body">
            <form action="{{ route('ajax_dropzone_store') }}" method="post" enctype="multipart/form-data" id="image-upload" class="dropzone">
                @csrf
                <input type="hidden" name="lesson" value="{{ $cur_lesson_id }}">
                <input type="hidden" name="comment" value="{{ $cur_comment_id }}">
            </form>
            <div class="form-notice">
                <p>Maximum upload file size: 150MB.</p>
            </div>
        </div>
        <div class="form-footer">
            <div class="form-done-btn">
                <button data-target="uploadCommentFile" class="btn btn-close" type="button">Done</button>
            </div>
        </div>
    </div>
    <div style="display:none;" class="hide" id="myDzTemplate">
        <div class="dz-preview dz-file-preview">
            <div class="dz-image"><img data-dz-thumbnail /></div>
            <div class="dz-details">
                <div class="dz-size"><span data-dz-size></span></div>
                <div class="dz-filename"><span data-dz-name></span></div>
            </div>
            <div class="dz-progress">
                <span class="dz-upload" data-dz-uploadprogress></span>
            </div>
            <div class="dz-error-message"><span data-dz-errormessage></span></div>
            <div class="dz-success-mark">
                <svg xmlns="http://www.w3.org/2000/svg" height="54px" viewBox="0 0 54 54" width="54px" fill="#000000">
                    <path d="M0 0h24v24H0z" fill="none" />
                    <path d="M9 16.17L4.83 12l-1.42 1.41L9 19 21 7l-1.41-1.41z" />
                </svg>
            </div>
            <div class="dz-error-mark">
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                    <path d="M0 0h24v24H0z" fill="none" />
                    <circle cx="12" cy="19" r="2" />
                    <path d="M10 3h4v12h-4z" />
                </svg>
            </div>
            <div class="dz-remove" data-dz-remove>
                <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 0 24 24" width="24px" fill="#000000">
                    <path d="M0 0h24v24H0z" fill="none" />
                    <path d="M14.59 8L12 10.59 9.41 8 8 9.41 10.59 12 8 14.59 9.41 16 12 13.41 14.59 16 16 14.59 13.41 12 16 9.41 14.59 8zM12 2C6.47 2 2 6.47 2 12s4.47 10 10 10 10-4.47 10-10S17.53 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8z" />
                </svg>
            </div>
        </div>
    </div>
    <div class="bg-overlay"></div>
</div>
@endif
<!--End content-wrapper-->

@push('cjschat')
@if(($cur_comment_id && $cur_comment_id > 0) || Auth::user()->role_id > 3 )
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });

    $(function() {
        $('#userCommentDetails').on('mouseover click press hover', '.user-comment-item', function() {
            $(this).find('.btn-delcmt').show().removeClass('hide');
        }).on('mouseleave blur', '.user-comment-item', function() {
            $(this).find('.btn-delcmt').hide().addClass('hide');
        });

        $('.cmt-message-file').on('click', function() {
            console.log('show upload form');
            $('#uploadCommentFile').removeClass('hide').show();
        });

        $('#userCommentDetails').on('click','.btn-delcmt', function() {
            let id = $(this).attr('data-id');
            if(typeof id != "undefined" && id != '' && id != null) {
                globalScripts.delete_comment_detail(id);
            }
        });

        $('.btn-close').on('click', function() {
            let target = $(this).attr('data-target');
            if (typeof target != "undefined") {
                $('#' + target).addClass('hide').css('display', 'none');
                $('#uploadCommentFile .dz-preview').removeAttr('data-id');
                myDropzone.removeAllFiles();
            }
        });

        $('#inputUserComment').on('keyup', function(e) {
            e.preventDefault();
            if (e.key !== undefined) {
                code = e.key;
            } else if (e.keyIdentifier !== undefined) {
                code = e.keyIdentifier;
            } else if (e.keyCode !== undefined) {
                code = e.keyCode;
            }
            if (typeof code != "undefined" && (code == 13 || code == 'Enter')) {
                $('#sendUserComment').trigger('click');
            }
        });

        $('#sendUserComment').on('click', function(e) {
            e.preventDefault();

            let content = $('#inputUserComment').val();
            if (content != '' && content != null) {
                let lesson_id = $(this).attr('data-lesson');
                let comment_id = $(this).attr('data-comment');
                let formData = {
                    comment_id: comment_id,
                    lesson_id: lesson_id,
                    content: content
                };

                $.ajax({
                    url: "{{ route('add_new_comment') }}",
                    method: "POST",
                    data: formData,
                    success: function(response) {
                        if (response.success != '' && response.time != '') {
                            globalScripts.insert_new_comment(response.id, content, response.time);
                        }
                    },
                    error: function(xhr, ajaxOptions, thrownError) {
                        // console.log(xhr.status);
                        // console.log(thrownError);
                    }
                })
                $('#inputUserComment').val('');
            }
        });

        // Upload file
        var CSRF_TOKEN = document.querySelector('meta[name="csrf-token"]').getAttribute("content");

        Dropzone.autoDiscover = false;
        var myDropzone = new Dropzone(".dropzone", {
            maxFiles: 6,
            maxFilesize: 150, // 150MB
            acceptedFiles: ".pdf,.doc,.docx,.xls,.xlsx,.m4a,.flac,.mp3,.wav,.aac,.mp4,.mov,.wmv,.avi,.mkv,.webm,.png,.jpg,.jpeg",
            maxfilesexceeded: function(file) {
                this.removeFile(file);
            },
            previewTemplate: document.querySelector("#myDzTemplate").innerHTML
        });
        myDropzone.on("sending", function(file, xhr, formData) {
            console.log('sending');
            formData.append("_token", CSRF_TOKEN);
        });
        myDropzone.on("success", function(file, response) {
            console.log('success');
            if (response.success == 1) {
                let preview = (typeof file.previewElement.childNodes[1].firstChild.src != "undefined") ? file.previewElement.childNodes[1].firstChild.src : '';
                globalScripts.insert_new_file(file.name, response.path, preview, response.time, response.detail_id);
                globalScripts.count_uploaded_file('upload-file-form');
                file.previewElement.setAttribute("data-id", response.detail_id);
            }
        });
        myDropzone.on('removedfile', function(file) {
            let id = file.previewElement.getAttribute('data-id');
            if (typeof id != "undefined" && id != '' && id != null) {
                globalScripts.delete_file_uploaded(id);
            }
        });

        $('#lessonTabs a').click(function(e) {
            e.preventDefault()
            $(this).tab('show');
            $('#lessonTabs .tab-active').removeClass('tab-active');
            $(this).parent().addClass('tab-active');
        });

        $('.teacher-view-lesson .section-comment-file').on('click press focusin', function() {
            $('.view-lesson, .view-comment-file').removeClass('col-lg-4').removeClass('col-xl-4').removeClass('col-lg-8').removeClass('col-xl-8').addClass('col-lg-6 col-xl-6');
        });

        $(document).mouseup(function(e) {
            if ($('.teacher-view-lesson').length > 0) {
                let commentFile = $(".section-comment-file");
                let uploadFile = $(".upload-file-form");
                if (!commentFile.is(e.target) && commentFile.has(e.target).length === 0 && !uploadFile.is(e.target) && uploadFile.has(e.target).length === 0) {
                    $('.view-lesson, .view-comment-file').removeClass('col-lg-6').removeClass('col-xl-6');
                    $('.view-lesson').addClass('col-lg-8 col-xl-8');
                    $('.view-comment-file').addClass('col-lg-4 col-xl-4');
                }
            }
        });
    });
</script>
@endif

@endpush
@push('cjs')

<script type="text/javascript">
    jQuery(document).ready(function() {
        jQuery('body').bind('cut paste', function(e) {
            e.preventDefault();
        });
        jQuery("body").on("contextmenu", function(e) {
            return false;
        });
    });
    jQuery(document).keydown(function(event) {
        if (event.keyCode == 123) {
            return false;
        }
        if (event.ctrlKey && event.shiftKey && event.keyCode == 67) {
            return false;
        }
        if (event.ctrlKey && event.shiftKey && event.keyCode == 73) {
            return false;
        }
    });
    document.onkeydown = function(e) {
        if (e.ctrlKey && (e.keyCode === 67 || e.keyCode === 86 || e.keyCode === 85 || e.keyCode === 117)) {
            return false;
        } else {
            return true;
        }
    };
    jQuery(document).keypress("u", function(e) {
        if (e.ctrlKey) {
            return false;
        } else {
            return true;
        }
    });
    document.body.addEventListener('keydown', event => {
        if (event.ctrlKey && 'spa'.indexOf(event.key) !== -1) {
            event.preventDefault()
        }
    })
</script>
@endpush
@endsection
