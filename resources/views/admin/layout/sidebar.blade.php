{{-- Correcting issues in the Skydash Admin Panel Sidebar using Session --}}


<!-- partial:partials/_sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        <li class="nav-item">
            <a @if (Session::get('page') == 'dashboard') style="background: #052CA3 !important; color: #FFF !important" @endif
                class="nav-link" href="{{ url('admin/dashboard') }}">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">{{ __('Dashboard') }}</span>
            </a>
        </li>



        {{-- In case the authenticated user (the logged-in user) (using the 'admin' Authentication Guard in auth.php) type is 'vendor' --}}
        @if (Auth::guard('admin')->user()->type == 'vendor')
            {{-- Accessing Specific Guard Instances: https://laravel.com/docs/9.x/authentication#accessing-specific-guard-instances --}}
            <li class="nav-item">
                <a @if (Session::get('page') == 'update_personal_details' ||
                        Session::get('page') == 'update_business_details' ||
                        Session::get('page') == 'update_bank_details') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-vendors" aria-expanded="false"
                    aria-controls="ui-vendors">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Vendor Details') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-vendors">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_personal_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/update-vendor-details/personal') }}">{{ __('Personal') }}
                                Details</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_business_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/update-vendor-details/business') }}">{{ __('Business') }}
                                Details</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_bank_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/update-vendor-details/bank') }}">{{ __('Bank Details') }}</a>
                        </li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a @if (Session::get('page') == 'sections' ||
                        Session::get('page') == 'categories' ||
                        Session::get('page') == 'products' ||
                        Session::get('page') == 'brands' ||
                        Session::get('page') == 'filters' ||
                        Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-catalogue" aria-expanded="false"
                    aria-controls="ui-catalogue">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Catalogue Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-catalogue">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'products') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/products') }}">{{ __('Products') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/coupons') }}">{{ __('Coupons') }}</a></li>
                    </ul>
                </div>
            </li>

            {{-- If the authenticated/logged-in user is 'vendor', show ONLY the orders of the products added by that specific 'vendor' (In constrast to the case where the authenticated/logged-in user is 'admin', we show ALL orders) --}}
            <li class="nav-item">
                <a @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-orders" aria-expanded="false"
                    aria-controls="ui-orders">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Orders Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-orders">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/orders') }}">{{ __('Orders') }}</a></li>
                    </ul>
                </div>
            </li>
        @else
            {{-- In case the authenticated user (the logged-in user) (using the 'admin' Authentication Guard in auth.php) type is 'superadmin', or 'admin', or 'subadmin' --}}
            <li class="nav-item">
                <a @if (Session::get('page') == 'update_admin_password' || Session::get('page') == 'update_admin_details') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-settings" aria-expanded="false"
                    aria-controls="ui-settings">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Settings') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-settings">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_admin_password') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/update-admin-password') }}">{{ __('Update Admin Password') }}
                                </a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_admin_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/update-admin-details') }}">{{ __('Update Admin Details') }}</a>
                        </li>
                    </ul>
                </div>
            </li>



            <li class="nav-item">
                <a @if (Session::get('page') == 'view_admins' ||
                        Session::get('page') == 'view_subadmins' ||
                        Session::get('page') == 'view_vendors' ||
                        Session::get('page') == 'view_all') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-admins" aria-expanded="false"
                    aria-controls="ui-admins">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Admin Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-admins">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">

                        {{-- The Route Parameter {type} is the `type` column in the `admins` table, which can only be: admin, subadmin or vendor. And if there's no parameter passed at all, show ALL of the admins, subadmins and vendors at the same page --}}
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'view_admins') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/admins/admin') }}">{{ __('Admins') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'view_subadmins') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/admins/subadmin') }}">{{ __('Subadmins') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'view_vendors') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/admins/vendor') }}">{{ __('Vendors') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'view_all') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/admins') }}">{{ __('All') }}</a></li>
                    </ul>
                </div>
            </li>

            <li class="nav-item">
                <a @if (Session::get('page') == 'sections' ||
                        Session::get('page') == 'categories' ||
                        Session::get('page') == 'products' ||
                        Session::get('page') == 'brands' ||
                        Session::get('page') == 'filters' ||
                        Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-catalogue" aria-expanded="false"
                    aria-controls="ui-catalogue">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Catalogue Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-catalogue">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'sections') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/sections') }}">{{ __('Sections') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'categories') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/categories') }}">{{ __('Categories') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'brands') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/brands') }}">{{ __('Brands') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'products') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/products') }}">{{ __('Products') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/coupons') }}">{{ __('Coupons') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'filters') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/filters') }}">{{ __('Filters') }}</a></li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-orders" aria-expanded="false"
                    aria-controls="ui-orders">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Orders Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-orders">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/orders') }}">{{ __('Orders') }}</a></li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a @if (Session::get('page') == 'ratings') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-ratings" aria-expanded="false"
                    aria-controls="ui-ratings">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Ratings Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-ratings">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'ratings') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/ratings') }}">{{ __('Product Ratings & Reviews') }}</a></li>
                    </ul>
                </div>
            </li>



            <li class="nav-item">
                <a @if (Session::get('page') == 'users' || Session::get('page') == 'subscribers') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-users" aria-expanded="false"
                    aria-controls="ui-users">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Users Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-users">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'users') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/users') }}">{{ __('Users') }}</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'subscribers') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/subscribers') }}">{{ __('Subscribers') }}</a></li>
                    </ul>
                </div>
            </li>



            <li class="nav-item">
                <a @if (Session::get('page') == 'banners') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-banners" aria-expanded="false"
                    aria-controls="ui-banners">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Banners Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-banners">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'banners') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/banners') }}">{{ __('Home Page Banners') }}</a></li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a @if (Session::get('page') == 'shipping') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-shipping" aria-expanded="false"
                    aria-controls="ui-shipping">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">{{ __('Shipping Management') }}</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-shipping">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'shipping') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('admin/shipping-charges') }}">{{ __('Shipping Charges') }}</a></li>
                    </ul>
                </div>
            </li>
        @endif

    </ul>
</nav>
