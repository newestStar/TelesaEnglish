@extends('admin.layouts.admin')

@section('content')

    <div class="content-wrapper">
        <div class="container-fluid">
            @include('admin.includes.bread_cumb',['title'=>'Edit'])
            <div class="row">
                <div class="col-lg-10">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title">Edit File</div>
                            <hr />
                            <form method="POST" class="update_form" action="{{ route('file_resource.update',$fileResource->id) }}" enctype="multipart/form-data">
                                @csrf
                                @method('put')
                                <div class="preloader"></div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="name" value="{{ $fileResource->name }}" class="form-control" id="input-21" placeholder="Name" />
                                        <span class="text-danger name"></span>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">Description</label>
                                    <div class="col-sm-10">
                                        <textarea name="description" class="form-control" id="mytextarea1" cols="30" rows="10">{!! $fileResource->description !!}</textarea>
                                        <span class="text-danger description"></span>
                                    </div>
                                </div>

                                @if($fileResource->type_file == "mp4")
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="pathfile" class="form-control" id="input-231"/>
                                        @if($fileResource->pathfile != null)
                                        <video controls width="300px">
                                          <source src="{{ url($fileResource->pathfile) }}">
                                        </video>
                                        @endif
                                        <span class="text-danger pathfile"></span>
                                    </div>
                                </div>
                                @endif

                                @if($fileResource->type_file == "pdf")
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="pathfile" class="form-control" id="input-231"/>
                                        @if($fileResource->pathfile != null)
                                         <a href="{{ url($fileResource->pathfile) }}" target="_blank">View</a>
                                        @endif
                                        <span class="text-danger pathfile"></span>
                                    </div>
                                </div>
                                @endif

                                @if($fileResource->type_file == "mp3")
                                <div class="form-group row">
                                    <label for="input-21" class="col-sm-2 col-form-label">File</label>
                                    <div class="col-sm-10">
                                        <input type="file" name="pathfile" class="form-control" id="input-231"/>
                                        @if($fileResource->pathfile != null)
                                         <audio controls  controlsList="nodownload">
                                          <source src="{{url('/'.$fileResource->pathfile)}}" type="audio/mpeg">
                                        </audio>
                                        @endif
                                        <span class="text-danger pathfile"></span>
                                    </div>
                                </div>
                                @endif

                                <div class="form-group row">
                                    <label class="col-sm-2 col-form-label"></label>
                                    <div class="col-sm-10">
                                        <button type="submit" class="btn btn-white px-5"><i class="icon-lock"></i> Update</button>
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
    @endpush

    @push('cjs')
        <script src="{{ asset('contents/admin') }}/plugins/summernote/dist/summernote-bs4.min.js"></script>
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
        </script>
    @endpush

@endsection



