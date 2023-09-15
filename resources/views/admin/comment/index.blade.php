@extends('admin.layouts.admin')

@section('content')

<div class="content-wrapper">
    <div class="container-fluid">
        @include('admin.includes.bread_cumb',['title'=>'Comment List'])
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="px-3" style="margin-top: 7px;">
                        <div class="p-2 d-flex">
                            <h4 class="py-2" style="flex-basis: 100px; letter-spacing: 2.3px; font-weight: bold;">SEARCH</h4>
                            <div class="search-bar flex-grow-1 px-4 py-2">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="searchtext" placeholder="NAME, COMMENT, FILES" />
                                    <div class="input-group-append">
                                        <button class="btn btn-search" onclick="search()"><i class="zmdi zmdi-search"></i></button>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex" style="flex-basis: 280px;">
                                <h6 style="flex-basis: 100px; padding-top: 15px;letter-spacing: 2.3px; font-weight: bold;">LABEL</h6>
                                <div style="font-weight: bold;">
                                    <div style="font-size: 9px; width: 180px; height: 40px; overflow: hidden;">
                                        <span class="labelbtn checked" data-filter="-1" onclick="filterComments(-1, this)" >ALL</span>
                                        @foreach($labels as $label)
                                            <span class="labelbtn" data-filter="{{$label['id']}}" onclick="filterComments({{$label['id']}}, this)">{{ $label['name'] }}</span>
                                        @endforeach
                                    </div>
                                    <div class="lblmanagebtn pointer" onclick="loadModal()">Label management</div>
                                </div>
                            </div>
                        </div>
                        <div class="card-body" style="background-color: rgba(0,0,0,.2);">
                            <div class="table-responsive">
                                <table class="table table-comments">
                                    <thead>
                                        <tr>
                                            <th class="text-center" scope="col" style="font-size: 17px;">NAME</th>
                                            <th scope="col" style="font-size: 14px; color: #c1cac9;">COMMENT</th>
                                            <th scope="col" style="font-size: 17px;">LAST SEEN</th>
                                            @if(Auth::user()->role_id < 3)
                                                <th scope="col" style="font-size: 14px;">Answered</th>
                                            @endif
                                            <th class="text-right" scope="col" style="font-size: 14px;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody id="commentlist">
                                        @foreach ($userComments as $key => $item)
                                        <tr class="@if ($item['new_comment'] > 0) new-comment @endif">
                                            <td scope="row">
                                                @if (!is_null($item['last_comment']))
                                                    <div class="d-flex">
                                                        <div>
                                                            @if (!is_null($item['last_comment']->photo))
                                                                <img src="{{ asset($item['last_comment']->photo) }}" height="56" alt="" srcset="" style="border-radius: 50%;">
                                                            @else
                                                                <img src="{{ asset('avatar.png') }}" height="56" alt="" srcset="" style="border-radius: 50%;">
                                                            @endif
                                                        </div>
                                                        <div class="px-3" style="letter-spacing: 2.3px;">
                                                            @if (!is_null($item['comments']->label))
                                                                <div class="labelpack" style="min-width: 100px;">
                                                                    <?php
                                                                    $lbls = explode(",", $item['comments']->label);
                                                                    foreach($lbls as $lbl) {
                                                                        echo "<span class='labeltip labeltip".$lbl."'></span>";
                                                                    }
                                                                    ?>
                                                                    <div class="labeldlg">
                                                                        @foreach($labels as $label)
                                                                            <div class='smalltip smalltip{{$label['color']}}'></div>{{$label['name']}}<br />
                                                                        @endforeach
                                                                        <div>Label management</div>
                                                                    </div>
                                                                </div>
                                                            @endif
                                                            @if (!is_null($item['last_comment']->first_name) && !is_null($item['last_comment']->last_name))
                                                                <div class="montserratfont">{{trim($item['last_comment']->first_name . ' ' . $item['last_comment']->last_name)}}</div>
                                                            @endif
                                                        </div>
                                                    </div>
                                                @endif
                                            </td>
                                            <td scope="row">
                                                @if (!is_null($item['last_comment']))
                                                <div class="hover-text">
                                                    <span>{{ get_sub_comment_detail($item['last_comment']->content) }}</span>
                                                </div>
                                                @endif
                                            </td>
                                            <td scope="row" style="letter-spacing: 2.3px;">
                                                @if (!is_null($item['last_comment']))
                                                <div class="montserratfont">{{ generate_comment_created_datetime($item['last_comment']->created_time) }}</div>
                                                @endif
                                            </td>
                                            @if(Auth::user()->role_id < 3)
                                                <td>
                                                    @if(!is_null($item['last_comment']) && $item['last_comment']->role_id < 3)
                                                    {{trim($item['last_comment']->first_name . ' ' . $item['last_comment']->last_name)}}
                                                    @endif
                                                </td>
                                            @endif
                                            <td scope="row">
                                                <div class="text-right">
                                                    <a type="button" href="@if (isset($item['comments']->id)) {{ route('admin_lesson_view', ['id' => $item['comments']->lesson_id, 'comment_id' => $item['comments']->id ]) }} @else {{ route('admin_lesson_view', $item['comments']->lesson_id) }} @endif" class="btn btn-warning waves-effect waves-light m-1">
                                                        <i class="zmdi zmdi-comment-text"></i> <span>View</span>
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer">
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!--start overlay-->
        <div class="overlay"></div>
        <!--end overlay-->
    </div>
    <!-- End container-fluid-->
</div>
<!--End content-wrapper-->
<!-- start Label Management Modal -->
<div class="modal fade" id="lblmngmodal" tabindex="-1" aria-labelledby="productViewModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <div class="d-flex">
                    <i class="zmdi zmdi-arrow-left d-none pointer py-1 px-2" id="backbtn" onclick="onBack()"></i>
                    <h2 class="modal-title" id="productViewModalLabel" >Manage Label</h2>
                </div>
            </div>
            <div class="modal-body">
                <div id="mainbodyview">
                    <p>Your labels</p>
                    <div id="content">
                        @foreach($labels as $label)
                            <div class="card-label">
                                <span class="labeltip labeltip{{ $label['color'] }}"></span>&nbsp;&nbsp;&nbsp;{{ $label['name'] }}<i class="zmdi zmdi-delete float-right" onclick="delLabel({{ $label['id'] }})"></i>
                            </div>
                        @endforeach
                    </div>
                    <div class="add-label-btn" onclick="onAdd()">+ Add Label</div>
                </div>
                <div id="addbodyview" class="d-none">
                    <p>Edit labels</p>
                    <div class="input-group">
                        <input type="text" class="form-control border-radius" placeholder="Label Name" id="lblname" />
                        <div class="input-group-append position-relative">
                            <button class="input-group-text" id="showbtn" onclick="onBtnShow()">
                                <span class="labeltip labeltip0"></span>
                            </button>
                            <div class="color-pick d-none" id="colorpicker">
                                <p>Change tag color</p>
                                <div class="d-flex justify-content-between">
                                    <div class="color-detail" style="background: red" onclick="changeColor(0)"></div>
                                    <div class="color-detail" style="background: #ff00ff" onclick="changeColor(1)"></div>
                                    <div class="color-detail" style="background: #ff8000" onclick="changeColor(2)"></div>
                                    <div class="color-detail" style="background: #ffbf00" onclick="changeColor(3)"></div>
                                    <div class="color-detail" style="background: #00ff00" onclick="changeColor(4)"></div>
                                    <div class="color-detail" style="background: #00ffff" onclick="changeColor(5)"></div>
                                    <div class="color-detail" style="background: #0040ff" onclick="changeColor(6)"></div>
                                    <div class="color-detail" style="background: #4000ff" onclick="changeColor(7)"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary d-none" id="addBtn" onclick="addLabel()">Add Label</button>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- End Label Management Modal -->
<script>
    var selected_color = 0;
    var labels = @json($labels);
    var role_id = {{ Auth::user()->role_id  }};
    var userComments = @json($userComments);
    function onAdd() {
        $('#productViewModalLabel').html('Add New Label');
        $('#backbtn').removeClass('d-none');
        $('#mainbodyview').addClass('d-none');
        $('#addbodyview').removeClass('d-none');
        $('#addBtn').removeClass('d-none');
    }
    function onBack() {
        $('#productViewModalLabel').html('Manage Label');
        $('#backbtn').addClass('d-none');
        $('#mainbodyview').removeClass('d-none');
        $('#addbodyview').addClass('d-none');
        $('#addBtn').addClass('d-none');
    }
    function onBtnShow() {
        $('#colorpicker').toggleClass('d-none');
    }
    function loadModal() {
        $('#lblmngmodal').modal('show');
    }
    function changeColor(index) {
        $('#showbtn').html('<span class="labeltip labeltip' + index + '"></span>');
        selected_color = index;
        $('#colorpicker').addClass('d-none');
    }
    function addLabel() {
        $.ajax({
            type: "POST",
            url: "{{ url('/lessons/comments/addlabel') }}",
            dataType: "JSON",
            data: JSON.stringify({
                name: $('#lblname').val(),
                color: selected_color
            }),
            contentType: 'application/json',
            success: function(data) {
                if(data.error) {
                    console.log(data.error);
                }
                onBack();
                $('#lblname').val('');
                selected_color = 0;
                var html_text = '';
                data.data.forEach(function(r) {
                    html_text += '<div class="card-label">';
                    html_text += '<span class="labeltip labeltip' + r.color + '"></span>&nbsp;&nbsp;&nbsp;' + r.name;
                    html_text += '<i class="fa fa-trash float-right" onclick="delLabel(' + r.id + ')"></i>';
                    html_text += '</div>';
                })
                $('#content').html(html_text);
            }
        });
    }
    function delLabel(id) {
        if (confirm("Are you sure?")) {
            $.ajax({
                type: "POST",
                url: "{{ url('/lessons/comments/dellabel') }}",
                dataType: "JSON",
                data: JSON.stringify({
                    id: id
                }),
                contentType: 'application/json',
                success: function(data) {
                    if(data.error) {
                        console.log(data.error);
                    }
                    var html_text = '';
                    data.data.forEach(function(r) {
                        html_text += '<div class="card-label">';
                        html_text += '<span class="labeltip labeltip' + r.color + '"></span>&nbsp;&nbsp;&nbsp;' + r.name;
                        html_text += '<i class="zmdi zmdi-delete float-right" onclick="delLabel(' + r.id + ')"></i>';
                        html_text += '</div>';
                    })
                    $('#content').html(html_text);
                }
            });
        }
    }
    function search() {
        $.ajax({
            type: "POST",
            url: "{{ url('/lessons/comments') }}",
            dataType: "JSON",
            data: JSON.stringify({
                searchtext: $('#searchtext').val()
            }),
            contentType: 'application/json',
            success: function(data) {
                if(data.error) {
                    console.log(data.error);
                }
                console.log(data.data);
                userComments = data.data;
                var comments = userComments;
                if($('.checked').data('filter') != -1) {
                    comments = userComments.filter(item => {
                        if(item.comments.label && item.comments.label.includes($('.checked').data('filter')) === true)
                            return true;
                    });
                }
                var html_text = '';
                var labels_text = '';
                labels_text += '<div class="labeldlg">';
                labels.forEach(function(r) {
                    labels_text += '<div class="smalltip smalltip' + r.color + '"></div>' + r.name + '<br/>';
                });
                labels_text += '<div>Label management</div>';
                labels_text += '</div>';
                comments.forEach(function(r) {
                    html_text += '<tr class=" new-comment ">';
                    html_text += '<td scope="row">';
                    html_text += '<div class="d-flex">';
                    html_text += '<div>';
                    if(r.last_comment.photo) {
                        html_text += '<img src="{{ asset("") }}'+r.last_comment.photo+'" height="56" alt="" srcset="" style="border-radius: 50%;">';
                    } else {
                        html_text += '<img src="{{ asset("") }}avatar.png" height="56" alt="" srcset="" style="border-radius: 50%;">';
                    }
                    html_text += '</div>';
                    html_text += '<div class="px-3" style="letter-spacing: 2.3px;">';
                    if(r.comments.label) {
                        html_text += '<div class="labelpack" style="min-width: 100px;">';
                        let lbls = r.comments.label.split(',');
                        lbls.forEach(function (lbl) {
                            html_text += '<span class="labeltip labeltip'+lbl + '"></span>';
                        });
                        html_text += labels_text;
                    }
                    html_text += '</div>';
                    if(r.last_comment.first_name || r.last_comment.last_name) {
                        html_text += '<div class="montserratfont">' + (r.last_comment.first_name + ' ' + r.last_comment.last_name).trim() + '</div>';
                    }
                    html_text += '</div>';
                    html_text += '</div>';
                    html_text += '</td>';
                    html_text += '<td scope="row">';
                    //get_sub_comment_detail
                    if(r.last_comment.content) {
                        html_text += '<div class="hover-text"><span>' + r.last_comment.content + '</span></div>';
                    }
                    html_text += '</td>';
                    html_text += '<td scope="row" style="letter-spacing: 2.3px;">';
                    // generate_comment_created_datetime
                    if(r.last_comment)
                        html_text += '<div class="montserratfont">'+ r.last_comment.created_time+ '</div>';
                    html_text += '</td>';
                    if(role_id < 3) {
                        html_text += '<td>';
                        if(r.last_comment.first_name || r.last_comment.last_name) {
                            html_text += (r.last_comment.first_name + ' ' + r.last_comment.last_name).trim();
                        }
                        html_text += '</td>';
                    }
                    html_text += '<td scope="row">';
                    html_text += '<div class="text-right">';
                    html_text += '<a type="button" href="{{ url('admin_lesson_view') }}';
                    if(r.comments.id) {
                        html_text += '/' + r.comments.lession_id + '/' + r.comments.id;
                    }
                    else {
                        html_text += '/' + r.comments.lession_id;
                    }
                    html_text += '" class="btn btn-warning waves-effect waves-light m-1">';
                    html_text += '<i class="zmdi zmdi-comment-text"></i> <span>View</span>';
                    html_text += '</a>';
                    html_text += '</div>';
                    html_text += '</td>';
                    html_text += '</tr>';
                });
                $('#commentlist').html(html_text);
            }

        });
    }
    function filterComments(id, e) {
        $('.labelbtn').removeClass('checked');
        $(e).addClass('checked');
        var comments = userComments;
        if(id != -1) {
            comments = userComments.filter(item => {
                if(item.comments.label && item.comments.label.includes(id) === true)
                    return true;
            });
        }
        var html_text = '';
        var labels_text = '';
        labels_text += '<div class="labeldlg">';
        labels.forEach(function(r) {
            labels_text += '<div class="smalltip smalltip' + r.color + '"></div>' + r.name + '<br/>';
        });
        labels_text += '<div>Label management</div>';
        labels_text += '</div>';
        comments.forEach(function(r) {
            html_text += '<tr class=" new-comment ">';
            html_text += '<td scope="row">';
            html_text += '<div class="d-flex">';
            html_text += '<div>';
            if(r.last_comment.photo) {
                html_text += '<img src="{{ asset("") }}'+r.last_comment.photo+'" height="56" alt="" srcset="" style="border-radius: 50%;">';
            } else {
                html_text += '<img src="{{ asset("") }}avatar.png" height="56" alt="" srcset="" style="border-radius: 50%;">';
            }
            html_text += '</div>';
            html_text += '<div class="px-3" style="letter-spacing: 2.3px;">';
            if(r.comments.label) {
                html_text += '<div class="labelpack" style="min-width: 100px;">';
                let lbls = r.comments.label.split(',');
                lbls.forEach(function (lbl) {
                    html_text += '<span class="labeltip labeltip'+lbl + '"></span>';
                });
                html_text += labels_text;
            }
            html_text += '</div>';
            if(r.last_comment.first_name || r.last_comment.last_name) {
                html_text += '<div class="montserratfont">' + (r.last_comment.first_name + ' ' + r.last_comment.last_name).trim() + '</div>';
            }
            html_text += '</div>';
            html_text += '</div>';
            html_text += '</td>';
            html_text += '<td scope="row">';
            //get_sub_comment_detail
            if(r.last_comment.content) {
                html_text += '<div class="hover-text"><span>' + r.last_comment.content + '</span></div>';
            }
            html_text += '</td>';
            html_text += '<td scope="row" style="letter-spacing: 2.3px;">';
            // generate_comment_created_datetime
            if(r.last_comment)
                html_text += '<div class="montserratfont">'+ r.last_comment.created_time+ '</div>';
            html_text += '</td>';
            if(role_id < 3) {
                html_text += '<td>';
                if(r.last_comment.first_name || r.last_comment.last_name) {
                    html_text += (r.last_comment.first_name + ' ' + r.last_comment.last_name).trim();
                }
                html_text += '</td>';
            }
            html_text += '<td scope="row">';
            html_text += '<div class="text-right">';
            html_text += '<a type="button" href="{{ url('admin_lesson_view') }}';
            if(r.comments.id) {
                html_text += '/' + r.comments.lession_id + '/' + r.comments.id;
            }
            else {
                html_text += '/' + r.comments.lession_id;
            }
            html_text += '" class="btn btn-warning waves-effect waves-light m-1">';
            html_text += '<i class="zmdi zmdi-comment-text"></i> <span>View</span>';
            html_text += '</a>';
            html_text += '</div>';
            html_text += '</td>';
            html_text += '</tr>';
        });
        $('#commentlist').html(html_text);
    }
</script>
@endsection
