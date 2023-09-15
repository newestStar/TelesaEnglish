<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8" />
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="Ecommerce Controll Dash Board" />
        <meta name="author" content="Ecommerce.com" />
        <title>Dashboard</title>
        <!-- loader-->
        <link href="{{ asset('contents/admin') }}/css/pace.min.css" rel="stylesheet" />
        <script src="{{ asset('contents/admin') }}/js/pace.min.js"></script>
        <!--favicon-->
        <link rel="icon" href="{{ asset('contents/admin') }}/images/favicon.ico" type="image/x-icon" />
        <!-- simplebar CSS-->
        <link href="{{ asset('contents/admin') }}/plugins/simplebar/css/simplebar.css" rel="stylesheet" />
        <!-- Bootstrap core CSS-->
        <link href="{{ asset('contents/admin') }}/css/bootstrap.min.css" rel="stylesheet" />
        <!-- animate CSS-->
        <link href="{{ asset('contents/admin') }}/css/animate.css" rel="stylesheet" type="text/css" />
        <!-- Icons CSS-->
        <link href="{{ asset('contents/admin') }}/css/icons.css" rel="stylesheet" type="text/css" />
        <!-- Metismenu CSS-->
        <link href="{{ asset('contents/admin') }}/plugins/metismenu/css/metisMenu.min.css" rel="stylesheet" />
        <style type="text/css">
            .form-control{
                background-color: #495057 !important;
            }
        </style>
        @stack('ccss')
        <!-- Custom Style-->
        <link href="{{ asset('contents/admin') }}/css/app-style-v2.css" rel="stylesheet" />
        <link rel="stylesheet" href="{{ asset('contents/admin') }}/custom.css">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="{{ asset('contents/admin') }}/js/jquery.min.js"></script>
        {{-- <script src="{{ asset('contents/admin') }}/axios.js"></script> --}}

        <script>
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content'),
                }
            });
            $( document ).ajaxSuccess((e,res)=>console.log((res.responseJSON && res.responseJSON) || res));
            $( document ).ajaxError(function( event, res ) {
                console.log(res.responseJSON.errors || res);
            });
            function toaster(icon, message){
                Toast.fire({
                    icon: icon,
                    title: message,
                })
            }
        </script>
        <script src="{{ asset('contents/admin') }}/custom-v2.js"></script>
    </head>

    <body class="bg-theme bg-theme9N" style="background-color: #000;">


        @include('include.flash')
        <!-- Start wrapper-->
        <div id="wrapper" class="@if(Auth::user()->role_id == 2) teacher-view @endif">
            <!--Start sidebar-wrapper-->
            <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
                <div class="brand-logo">
                    <img src="{{ asset('contents/admin') }}/images/logo.png" class="logo-icon" alt="logo icon" />
                    <h5 class="logo-text">TelesaENGLISH</h5>
                    <div class="close-btn"><i class="zmdi zmdi-close"></i></div>
                </div>

                @include('admin.includes.sidebar')
            </div>
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            <header class="topbar-nav">
                <nav class="navbar navbar-expand fixed-top">
                    <div id='ucNotification' class="comment-notification">
                        <a href="{{ route('dashboard_user_comment') }}">
                            <i class="zmdi zmdi-notifications"></i>
                            <span class="new-cmt-notify" style="display: none;"></span>
                        </a>
                    </div>
                    <div class="toggle-menu has-notification">
                        <i class="zmdi zmdi-menu"></i>
                    </div>
                    <div class="search-bar flex-grow-1">
                        <div class="input-group">
                            <div class="input-group-prepend search-arrow-back">
                                <button class="btn btn-search-back" type="button"><i class="zmdi zmdi-long-arrow-left"></i></button>
                            </div>
                            <input type="text" class="form-control" placeholder="search" />
                            <div class="input-group-append">
                                <button class="btn btn-search" type="button"><i class="zmdi zmdi-search"></i></button>
                            </div>
                        </div>
                    </div>
                </nav>
            </header>
            <!--End topbar header-->

            <div class="clearfix"></div>


            @yield('content')


            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--Start footer-->
            <footer class="footer">
                <div class="container">
                    <div class="text-center">
                        Copyright © 2023 TelesaEnglish.com
                    </div>
                </div>
            </footer>
            <!--End footer-->

            <!--start color switcher-->
            <div class="right-sidebar">
                <div class="switcher-icon">
                    <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
                </div>
                <div class="right-sidebar-content">
                    <p class="mb-0">Gaussion Texture</p>
                    <hr />

                    <ul class="switcher">
                        <li id="theme1"></li>
                        <li id="theme2"></li>
                        <li id="theme3"></li>
                        <li id="theme4"></li>
                        <li id="theme5"></li>
                        <li id="theme6"></li>
                    </ul>

                    <p class="mb-0">Gradient Background</p>
                    <hr />

                    <ul class="switcher">
                        <li id="theme7"></li>
                        <li id="theme8"></li>
                        <li id="theme9"></li>
                        <li id="theme10"></li>
                        <li id="theme11"></li>
                        <li id="theme12"></li>
                        <li id="theme13"></li>
                        <li id="theme14"></li>
                        <li id="theme15"></li>
                    </ul>
                </div>
            </div>
            <!--end color switcher-->
        </div>
        <!--End wrapper-->
     @stack('cjschat')
      </body>

    {{-- modal part --}}
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="" name="modal_delete_form" method="POST">
                    @csrf
                    <div class="modal-body">
                        <input type="hidden" name="id">
                        <h5>Sure Want To Delete!!</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    {{-- file mananger --}}
    @once
        @include('admin.product.components.file_manager')
    @endonce


    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
        @csrf
    </form>

    <!-- Bootstrap core JavaScript-->

    <script src="{{ asset('contents/admin') }}/js/popper.min.js"></script>
    <script src="{{ asset('contents/admin') }}/js/bootstrap.min.js"></script>

    <!-- simplebar js -->
    <script src="{{ asset('contents/admin') }}/plugins/simplebar/js/simplebar.js"></script>
    <!-- Chart js -->
    <script src="{{ asset('contents/admin') }}/plugins/Chart.js/Chart.min.js"></script>
    <!-- Metismenu js -->
    <script src="{{ asset('contents/admin') }}/plugins/metismenu/js/metisMenu.min.js"></script>
    <!-- Custom scripts -->
    <script src="{{ asset('contents/admin') }}/js/app-script-v2.js"></script>

    @stack('cjs')
    </html>

