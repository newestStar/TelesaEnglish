$(function () {
    "use strict";

    globalScripts.load_comment_notify();
    globalScripts.load_theme();
    globalScripts.select_theme();
    globalScripts.toggle_menu();
    globalScripts.send_comment();
    globalScripts.auto_scroll_comment_details();

    $(window).on("scroll", function () {
        if ($(this).scrollTop() > 60) {
            $('.topbar-nav .navbar').addClass('bg-dark');
        } else {
            $('.topbar-nav .navbar').removeClass('bg-dark');
        }
    });

    $(window).on("scroll", function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn();
        } else {
            $('.back-to-top').fadeOut();
        }
    });

    $('.back-to-top').on("click", function () {
        $("html, body").animate({ scrollTop: 0 }, 600);
        return false;
    });

    // metismenu
    $(function () {
        $('#menu').metisMenu();
    });

    $(".search-btn-mobile").on("click", function () {
        $(".search-bar").addClass("full-search-bar");
    });

    $(".search-arrow-back").on("click", function () {
        $(".search-bar").removeClass("full-search-bar");
    });

    $(".overlay").on("click", function () {
        $("#wrapper").removeClass("toggled");
    });

    $(".close-btn").on("click", function () {
        $("#wrapper").removeClass("toggled");
    });

    // === sidebar menu activation js
    $(function () {
        for (var i = window.location, o = $(".metismenu li a").filter(function () {
            return this.href == i;
        }).addClass("").parent().addClass("mm-active"); ;) {
            if (!o.is("li")) break;
            o = o.parent("").addClass("mm-show").parent("").addClass("mm-active");
        }
    });

    // page loader
    $(window).on('load', function () {
        $('#pageloader-overlay').fadeOut(1000);
    });

    $(function () {
        $('[data-toggle="popover"]').popover()
    });

    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });

    // theme setting
    $(".switcher-icon").on("click", function (e) {
        e.preventDefault();
        $(".right-sidebar").toggleClass("right-toggled");
    });
});

globalScripts = {
    load_comment_notify: function () {
        $.get("/ajax/get-new-comments", function (data) {
            if (data.count && data.count > 0) {
                $('#ucNotification .new-cmt-notify').html(data.count).show();
            } else {
                $('#ucNotification .new-cmt-notify').html('').hide();
            }
        }, "json");
    },
    send_comment: function () {

    },
    auto_scroll_comment_details: function() {
        if ($('#userCommentDetails').length > 0) {
            var objDiv = document.getElementById("userCommentDetails");
            objDiv.scrollTop = objDiv.scrollHeight;
        }
    },
    load_theme: function () {
        if (typeof (Storage) !== "undefined") {
            let class_name = localStorage.getItem("themeSelected");
            $('body').attr('class', class_name);
        }
    },
    select_theme: function () {
        for (let i = 1; i <= 15; i++) {
            $('#theme' + i).on('click', function () {
                let class_name = 'bg-theme bg-theme' + i;
                $('body').attr('class', class_name);
                // save to localStorage
                globalScripts.save_theme(class_name);
            });
        }
    },
    save_theme: function (class_name) {
        if (typeof (Storage) !== "undefined") {
            localStorage.setItem("themeSelected", class_name);
        }
    },
    toggle_menu: function () {
        if (typeof (Storage) !== "undefined") {
            let toggle_menu_class = localStorage.getItem("toggleMenuClass");
            if (toggle_menu_class != '') {
                $("#wrapper").addClass(toggle_menu_class);
            }
        }

        // toggle menu button
        $(".toggle-menu").on('click', function () {
            if ($("#wrapper").hasClass("toggled")) {
                // unpin sidebar when hovered
                $("#wrapper").removeClass("toggled");
                $("#sidebar-wrapper").off("hover");
                if (typeof (Storage) !== "undefined") {
                    localStorage.removeItem("toggleMenuClass");
                }
            } else {
                $("#wrapper").addClass("toggled");
                if (typeof (Storage) !== "undefined") {
                    localStorage.setItem("toggleMenuClass", "toggled");
                }
                $("#sidebar-wrapper").on("mouseenter", function () {
                    $("#wrapper").addClass("sidebar-hovered");
                }).on("mouseleave", function () {
                    $("#wrapper").removeClass("sidebar-hovered");
                });
            }
        });
    },
    insert_new_comment: function(id, content, time) {
        let html = '<div id="cmtDetail_' + id + '" class="user-comment-item cmt-right">';
        html += '<div class="comment-detail">';
        html += '<span>' + content + '</span>';
        html += '</div>'
        html += '<div id="delCmt_' + id + '" data-id="' + id + '" class="hide btn-delcmt" style="display: none;"><i class="zmdi zmdi-delete"></i></div>';
        html += '</div>';
        html += '<div id="cmtTime_' + id + '" class="comment-time cmt-right">';
        html += '<span>' + time + '</span>';
        html += '</div>';

        $('.user-comment-list').append(html);
        globalScripts.auto_scroll_comment_details();
    },
    insert_new_file: function(filename, filepath, preview, time, detail_id) {
        let data_id = typeof detail_id != "undefined" ? detail_id : filename;
        let html = '<div id="cmtDetail_' + detail_id + '" class="user-comment-item cmt-right" data-name="' + filename + '" data-id="' + data_id + '">';
        html += '<div class="comment-detail">';
        if(typeof preview != "undefined" && preview != "") {
            html += '<div class="preview-image"><img src="' + preview + '"></div>';
        } else {
            html += '<div class="preview-file"><i class="zmdi zmdi-file-text"></i></div>';
        }
        html += '<span><a href="' + filepath + '" target="_blank">' + filename + '</a></span>';
        html += '</div>';
        html += '<div id="delCmt_' + detail_id + '" data-id="' + detail_id + '" class="hide btn-delcmt" style="display: none;"><i class="zmdi zmdi-delete"></i></div>';
        html += '</div>';
        html += '<div id="cmtTime_' + detail_id + '" class="comment-time cmt-right" data-id="' + data_id + '">';
        html += '<span>' + time + '</span>';
        html += '</div>';

        $('.user-comment-list').append(html);
        globalScripts.auto_scroll_comment_details();
    },
    count_uploaded_file: function(form_class) {
        let total_file_uploaded = $('.' + form_class + ' .dz-preview').length;
        total_file_uploaded = (typeof total_file_uploaded != "undefined" && total_file_uploaded > 0) ? total_file_uploaded : 0;
        total_file_uploaded = (total_file_uploaded > 6) ? 6 : total_file_uploaded;
        let preview_class = 'file-uploaded-' + total_file_uploaded;
        $('.' + form_class).removeClass('file-uploaded-0 file-uploaded-1 file-uploaded-2 file-uploaded-3 file-uploaded-4 file-uploaded-5 file-uploaded-6').addClass(preview_class);
    },
    delete_file_uploaded: function (id) {
        // delete file in comment
        $('.user-comment-item').each(function () {
            if ($(this).attr('data-id') == id) {
                $(this).remove();
            }
        });
        $('.comment-time').each(function () {
            if ($(this).attr('data-id') == id) {
                $(this).remove();
            }
        });

        // delete file in server
        $.post('/ajax/remove-file', { id: id }, (res) => {
            if (res) {

            }
        })
    },
    delete_comment_detail: function (id) {
        // delete file in comment
        $('#cmtDetail_' + id).remove();
        $('#cmtTime_' + id).remove();

        // delete file in server
        $.post('/ajax/delete-comment', { id: id }, (res) => {
            if (res) {

            }
        })
    },
    copy_to_clipboard: function (id) {
        var r = document.createRange();
        r.selectNode(document.getElementById(id));
        window.getSelection().removeAllRanges();
        window.getSelection().addRange(r);
        document.execCommand('copy');
        window.getSelection().removeAllRanges();
    }
};
