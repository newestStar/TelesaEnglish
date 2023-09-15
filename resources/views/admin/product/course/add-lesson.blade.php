@extends('admin.layouts.admin')

@section('content')

    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-10">
                    <div class="card">
                        
                        <div class="card-body">
                            
                            <form method="POST" class="insert_form" action="{{ route('course.store_add_lesson') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="preloader"></div>
                                <input type="hidden" name="course_id" value="{{$courseId}}">    
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">Multi choose lesson</label>

                                    <div class="col-sm-10">
                                        @php
                                        $value_ids = [];
                                        foreach ($listCourseLesson as $key => $item) {
                                            array_push($value_ids,$item->lesson_id);
                                        }
                                    @endphp

                                         @include('admin.product.components.select_add_lesson',[
                                        'name' => 'lessons[]',
                                        'attributes' => '',
                                        'class' => 'multiple-select lessons',
                                        'collection' => $listLesson,
                                        'value'=>$listCourseLesson,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>
                                

                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"></label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-white px-5"><i class="icon-lock"></i> ADD LESSON</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">Sort</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($listCourseLesson as $key=>$item)
                                            <tr>
                                                <td scope="row">{{ $key+1 }}</td>
                                                <td scope="row"><?php if($item->lesson_info != null) echo $item->lesson_info->name;  ?></td>
                                                <td scope="row">
                                                    <form method="POST" class="insert_form" action="{{ route('course.store_sort_lesson') }}" enctype="multipart/form-data">
                                                        @csrf
                                                        <input type="text" style="width: 80px;" value="{{$item->sort_order}}" name="sort" class="form-control"  placeholder="sort" onchange = "this.form.submit()" />
                                                        <input type="hidden"  value="{{$item->id}}" name="lessonId" class="form-control" />

                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach

                                    </tbody>
                                </table>
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

    @push('ccss')
        <link rel="stylesheet" href="{{ asset('contents/admin') }}/plugins/summernote/dist/summernote-bs4.css" />
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet" />

    @endpush

    @push('cjs')
    
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
        <script src="{{ asset('contents/admin') }}/plugins/summernote/dist/summernote-bs4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        
        <script>
            $('#mytextarea1').summernote({
                    height: 400,
                    tabsize: 2
                });

            $(function() {
  $('.selectpicker').selectpicker();
});
        </script>
    @endpush

@endsection






