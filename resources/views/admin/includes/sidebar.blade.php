
<ul class="metismenu" id="menu">

    <li>
        <a  href="{{ route('dashboard_index') }}">
            <div class="parent-icon"><i class="zmdi zmdi-view-dashboard"></i></div>
            <div class="menu-title">Dashboard</div>
        </a>

    </li>

    @if (Auth::user()->role_id == 1  ||  Auth::user()->role_id == 2)
        <li>
            <a class="has-arrow" href="#">
                <div class="parent-icon"><i class="fa fa-user"></i></div>
                <div class="menu-title">User Management</div>
            </a>
            <ul class="">
                <li>
                    <a href="{{ route('admin_user_index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> User List</a>
                </li>
                @if (Auth::user()->role_id == 1)
                <li>
                    <a href="{{ route('admin_user_role_index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> User Role</a>
                </li>
                @endif
            </ul>
        </li>
        @if (Auth::user()->role_id == 1)
        <li>
            <a class="has-arrow" href="#">
                <div class="parent-icon"><i class="fa fa-user"></i></div>
                <div class="menu-title">File Resource Management</div>
            </a>
            <ul class="">
                <li>
                    <a href="{{ route('file_resource.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> File List</a>
                </li>
            </ul>
        </li>
        @endif
        <li>
            <a class="has-arrow" href="#">
                <div class="parent-icon"><i class="fa fa-user"></i></div>
                <div class="menu-title">Course & Lesson Management</div>
            </a>
            <ul class="">
                @if (Auth::user()->role_id == 1)
                <li>
                    <a href="{{ route('categoryCourse.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Category</a>
                </li>
                <li>
                    <a href="{{ route('course.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Courses</a>
                </li>
                @endif
                <li>
                    <a href="{{ route('vendor.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Lessons</a>
                </li>
            </ul>
        </li>
    @endif

    @if (Auth::user()->role_id == 5)
    <li>
        <a  href="{{ route('dashboard_index_course') }}">
            <div class="parent-icon"><i class="fa fa-book"></i></div>
            <div class="menu-title">Course List</div>
        </a>
    </li>
    @endif
    @if (in_array(Auth::user()->role_id, array(1,2,5)))
    <li>
        <a  href="{{ route('dashboard_user_comment') }}">
            <div class="parent-icon"><i class="fa fa-book"></i></div>
            <div class="menu-title">Comment Management</div>
        </a>
    </li>
    @endif

<!--
    <li>
        <a class="has-arrow" href="#">
            <div class="parent-icon"><i class="fa fa-shopping-cart"></i></div>
            <div class="menu-title">Product Management</div>
        </a>
        <ul class="">
            <li>
                <a href="{{ route('product.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> All Product</a>
            </li>
            <li>
                <a href="{{ route('product.create') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Add Product</a>
            </li>
            <li>
                <a href="{{ route('brand.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Brands</a>
            </li>
            <li>
                <a href="{{ route('main_category.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Main Category</a>
            </li>
            <li>
                <a href="{{ route('category.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Category</a>
            </li>
            <li>
                <a href="{{ route('sub_category.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Sub Category</a>
            </li>
            <li>
                <a href="{{ route('color.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Color</a>
            </li>
            <li>
                <a href="{{ route('size.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Size</a>
            </li>
            <li>
                <a href="{{ route('unit.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Unit</a>
            </li>
            <li>
                <a href="{{ route('writer.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Writer</a>
            </li>
            <li>
                <a href="{{ route('publication.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Publication</a>
            </li>
            <li>
                <a href="{{ route('status.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Status</a>
            </li>
            </li>
            <li>
                <a href="{{ route('vendor.index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> Vendor</a>
            </li>

        </ul>
    </li>

    <li>
        <a class="has-arrow" href="#">
            <div class="parent-icon"><i class="zmdi zmdi-view-dashboard"></i></div>
            <div class="menu-title">Blank Pages</div>
        </a>
        <ul class="">
            <li>
                <a href="{{ route('admin_blade_index') }}"><i class="zmdi zmdi-dot-circle-alt"></i> index</a>
            </li>
            <li>
                <a href="{{ route('admin_blade_create') }}"><i class="zmdi zmdi-dot-circle-alt"></i> create</a>
            </li>
            <li>
                <a href="{{ route('admin_blade_view') }}"><i class="zmdi zmdi-dot-circle-alt"></i> view</a>
            </li>
        </ul>
    </li>

-->
    <li class="menu-label">Extra</li>
    <li>
        <a href="https://www.facebook.com/groups/760662805340154/" target="_blank">
            <div class="parent-icon"><i class="fa fa-facebook"></i></div>
            <div class="menu-title">Nhóm kín Facebook</div>
        </a>
    </li>
    <li>
        <a href="https://www.facebook.com/groups/3493279500943702" target="_blank">
            <div class="parent-icon"><i class="fa fa-users"></i></div>
            <div class="menu-title">Cộng đồng Facebook</div>
        </a>
    </li>
    <li>
        <a href="https://youtube.com/@hoctienganhcungtelesa" target="_blank">
            <div class="parent-icon"><i class="fa fa-youtube"></i></div>
            <div class="menu-title">Kênh youtube</div>
        </a>
    </li>
    <li>
        <a href="https://www.tiktok.com/@learnenglishwithtelesa" target="_blank">
            <div class="parent-icon"> <img src="{{ asset('contents/admin') }}/images/tiktok.png" width="20px" height="20px" /></div>
            <div class="menu-title">Kênh TikTok</div>
        </a>
    </li>
    <li>
        <a href="javascript:void(0)">
            <div class="parent-icon"><i class="zmdi zmdi-account"></i></div>
            <div class="menu-title">
                @if(Auth::user()->role_id == 1)
                    Super Admin
                @elseif (Auth::user()->role_id == 2)
                    Teacher
                @elseif (Auth::user()->role_id > 3)
                    Student
                @endif

                {{ Auth::user()->username }}
            </div>
        </a>
    </li>
    <li>
        <a  href="{{ route('logout') }}"
            onclick="event.preventDefault(); confirm('sure!!') && document.getElementById('logout-form').submit();">
            <div class="parent-icon"><i class="fa fa-sign-out"></i></div>
            <div class="menu-title">Logout</div>
        </a>
    </li>



</ul>
