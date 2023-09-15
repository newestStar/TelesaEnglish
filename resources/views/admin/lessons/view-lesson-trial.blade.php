<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Bài học thử tại TELESAENGLISH.COM</title>
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

<body class="bg-theme bg-theme1">

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

 <div class="loader-wrapper"><div class="lds-ring"><div></div><div></div><div></div><div></div></div></div>
    <div class="card card-authentication1 mx-auto my-5" style="width: 55rem;">
        <div class="card-body">
         <div class="card-content p-2">
            <div class="text-center">
                <img src="{{ asset('contents/admin') }}/images/logo.png" alt="logo icon">
            </div>
          <div class="card-title text-uppercase text-center py-3">Bài học thử tại TELESAENGLISH.COM</div>

          <video controls width="100%" controlsList="nodownload ">
                                              <source src="{{url('../public/uploads/lessons/KHOAHOCTIENGANH-MIENPHI.mp4')}}">
                                            </video>
            <form>

              <div class="text-center mt-3">Đăng ký ngay tại</div>

             <div class="form-row mt-4">
              <div class="form-group mb-0 col-6">
               <a href="https://www.facebook.com/profile.php?id=100008755777483" target="_blank" class="btn btn-light btn-block"><i class="fa fa-facebook-square"></i> FACEBOOK</a>
             </div>
             <div class="form-group mb-0 col-6 text-right">
              <a href="https://www.telesaenglish.com/" target="_blank" class="btn btn-light btn-block"><i class="fa fa-plus"></i> Website TELESAENGLISH.COM</a>
             </div>
            </div>

             </form>
           </div>
          </div>
         </div>

     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->

    <!--start color switcher-->
   <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>

      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>

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

    </div><!--wrapper-->

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


</body>
</html>
