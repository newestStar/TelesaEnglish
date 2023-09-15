@extends('admin.layouts.admin')

@section('content')

    <div class="content-wrapper">
        <div class="container-fluid">
            @include('admin.includes.bread_cumb',['title'=>'Create'])
            <div class="row">
                <div class="col-lg-10">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title">Vendor Writer</div>
                            <hr />
                            <form method="POST" class="insert_form" action="{{ route('vendor.store') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="preloader"></div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">Title</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="name" class="form-control" id="input-21" placeholder="Name" />
                                        <span class="text-danger name"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">Description</label>
                                    <div class="col-sm-10">
                                        <textarea name="description" class="form-control" id="mytextarea1" cols="30" rows="10"></textarea>
                                        <span class="text-danger description"></span>
                                    </div>
                                </div>

                                
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Audio 01</label>
                                    <div class="col-sm-10">
                                         @include('admin.product.components.select_file',[
                                        'name' => 'audio01',
                                        'attributes' => '',
                                        'class' => 'multiple-select audio01',
                                        'collection' => $listAudio,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Audio 02 </label>
                                    <div class="col-sm-10">
                                         @include('admin.product.components.select_file',[
                                        'name' => 'audio02',
                                        'attributes' => '',
                                        'class' => 'multiple-select audio02',
                                        'collection' => $listAudio,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Audio 03 </label>
                                    <div class="col-sm-10">
                                         @include('admin.product.components.select_file',[
                                        'name' => 'audio03',
                                        'attributes' => '',
                                        'class' => 'multiple-select audio03',
                                        'collection' => $listAudio,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File pdf 01</label>
                                    <div class="col-sm-10">
                                         @include('admin.product.components.select_file',[
                                        'name' => 'file01',
                                        'attributes' => '',
                                        'class' => 'multiple-select file01',
                                        'collection' => $listFile,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File pdf 02</label>
                                    <div class="col-sm-10">
                                        @include('admin.product.components.select_file',[
                                        'name' => 'file02',
                                        'attributes' => '',
                                        'class' => 'multiple-select file02',
                                        'collection' => $listFile,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File pdf 03</label>
                                    <div class="col-sm-10">
                                        @include('admin.product.components.select_file',[
                                        'name' => 'file03',
                                        'attributes' => '',
                                        'class' => 'multiple-select file03',
                                        'collection' => $listFile,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Video 01</label>
                                    <div class="col-sm-10">
                                        @include('admin.product.components.select_file',[
                                        'name' => 'video01',
                                        'attributes' => '',
                                        'class' => 'multiple-select video01',
                                        'collection' => $listVideo,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Video 02</label>
                                    <div class="col-sm-10">
                                        @include('admin.product.components.select_file',[
                                        'name' => 'video02',
                                        'attributes' => '',
                                        'class' => 'multiple-select video02',
                                        'collection' => $listVideo,
                                        'fields' => [
                                            ['name' => 'name','type' => 'text'],
                                            ['name' => 'icon','type' => 'file'],
                                        ]
                                    ])
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File Video 03</label>
                                    <div class="col-sm-10">
                                        @include('admin.product.components.select_file',[
                                        'name' => 'video03',
                                        'attributes' => '',
                                        'class' => 'multiple-select video03',
                                        'collection' => $listVideo,
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
                                        <button type="submit" class="btn btn-white px-5"><i class="icon-lock"></i> ADD</button>
                                    </div>
                                </div>
                            </form>
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
        <script src="{{ asset('contents/admin') }}/plugins/summernote/dist/summernote-bs4.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/js/bootstrap-select.min.js"></script>
        {{-- <script src='https://cdn.tiny.cloud/1/vdqx2klew412up5bcbpwivg1th6nrh3murc6maz8bukgos4v/tinymce/5/tinymce.min.js' referrerpolicy="origin"></script> --}}

        <script>
            // tinymce.init({
            //     selector: '#mytextarea1'
            // });
            // tinymce.init({
            //     selector: '#mytextarea2'
            // });
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






