@extends('admin.layouts.admin')

@section('content')

    <div class="content-wrapper">
        <div class="container-fluid">
            @include('admin.includes.bread_cumb',['title'=>'Lesson List'])
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">&nbsp;</th>
                                            <th scope="col">Name</th>
                                            <th class="text-right" scope="col">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($collection as $key=>$item)
                                            <tr>
                                                <td scope="row">{{ $key+1 }}</td>
                                                
                                                <td scope="row">
                                                    <form data-toggle="validator" data-disable="false" role="form" action="{{ route('store_vendor_user') }}" method="post">
                                                        @csrf
                                                     <div class="icheck-material-white">
                                                        <input type="checkbox" name="checkDone" id="user-checkbox{{$item->id}}" value="{{$item->id}}" value="{{$item->id}}" 
                                                        @foreach ($listVendorUser as $k=>$v)
                                                            @if($v->lesson_id == $item->id)
                                                            checked
                                                            @endif
                                                        @endforeach

                                                        onChange="this.form.submit()" />
                                                        <input type="hidden" name="valueLesson" value="{{$item->id}}">
                                                        <label for="user-checkbox{{$item->id}}"></label>
                                                        </div>
                                                    </form>
                                                </td>
                                                <td scope="row">{{ $item->lesson_info->name }}</td>
                                                
                                                <td scope="row">
                                                    <div class="text-right">
                                                        <a type="button" href="{{ route('admin_lesson_view',$item->lesson_id) }}" class="btn btn-warning waves-effect waves-light m-1">
                                                            <i class="fa fa-eye"></i> <span>view</span>
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
                            {{ $collection->links() }}
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

@endsection



