@extends('admin.layouts.admin')

@section('content')

    <div class="content-wrapper">
        <div class="container-fluid">
            @include('admin.includes.bread_cumb',['title'=>'Dashboard'])
            
            <!--
                <div class="card mt-3">
    <div class="card-content">
        <div class="row row-group m-0">
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">9526 <span class="float-right"><i class="fa fa-shopping-cart"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Orders <span class="float-right">+4.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">8323 <span class="float-right"><i class="fa fa-usd"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Revenue <span class="float-right">+1.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">6200 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Visitors <span class="float-right">+5.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">5630 <span class="float-right"><i class="fa fa-envira"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Messages <span class="float-right">+2.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
        </div>
    </div>
 </div> 
-->

<div class="row">

     <div class="col-12 col-lg-12 col-xl-12">
        <div class="card">
           <div class="card-header">Report
             
           </div>
           <div class="card-body">
             <div class="chart-container-2">
               <canvas id="chart2"></canvas>
              </div>
           </div>
           <div class="table-responsive">
             <table class="table align-items-center">
               <tbody>
                @foreach($collection as $key=>$value)
                <?php 
                if($value->lesson_info != null){
                $check = 0;
                ?>
                 <tr>
                    @foreach($listVendorUser as $k=>$v)
                    @if($v->lesson_id == $value->id)
                    <?php $check =1; ?>
                   <td><a href="{{ route('admin_lesson_view',$value->lesson_id) }}"><i class="fa fa-circle text-white mr-2"></i> {{ $value->lesson_info->name }} </a></td>
                   <td>
                    <a type="button" href="{{ route('admin_lesson_view',$value->lesson_id) }}" class="btn btn-success waves-effect waves-light m-1">
                                                            <i class="fa fa-check"></i> <span>Đã học</span>
                                                        </a>
                                                    </td>
                    @endif
                                                        @endforeach

                    @if($check==0)
                    <td><a href="{{ route('admin_lesson_view',$value->lesson_id) }}"><i class="fa fa-circle text-light-3 mr-2"></i> {{ $value->lesson_info->name }} </a></td>
                   <td>
                    <a type="button" href="{{ route('admin_lesson_view',$value->lesson_id) }}" class="btn btn-warning waves-effect waves-light m-1">
                                                            <i class="fa fa-eye"></i> <span> Học ngay</span>
                                                        </a>
                                                    </td>
                    @endif                                    
                 </tr>
                 <?php
             }
             ?>
                 @endforeach
               </tbody>
             </table>
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
    <!--End content-wrapper-->


<script type="text/javascript">
    $(function() {
    "use strict";
        
    // chart 2

        var ctx = document.getElementById("chart2").getContext('2d');
            var myChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: ['Đã học xong', 'Chưa học'],
                    datasets: [{
                      label: '# of Tomatoes',
                      data: [ {{ $lessonDone }}, {{ $lessonNotYet }} ],
                      backgroundColor: [
                        '#04b962',
                        '#e67c02'
                        
                      ],
                      borderColor: [
                        '#04b962',
                        '#e67c02'
                        
                      ],
                      borderWidth: 1
                    }]
                  },
            options: {
                maintainAspectRatio: false,
               legend: {
                 position :"bottom",    
                 display: false,
                    labels: {
                      fontColor: '#ddd',  
                      boxWidth:15
                   }
                }
                ,
                tooltips: {
                  displayColors:false
                }
               }
            });
        

        
        
   });   
   
</script>

@endsection



