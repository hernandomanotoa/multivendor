<!-- partial:partials/_navbar.html -->
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <b>{{ __('Admin Panel') }}</b>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
            <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
            <li class="nav-item nav-search d-none d-lg-block">
                <div class="input-group">
                    <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                        <span class="input-group-text" id="search">
                            <i class="icon-search"></i>
                        </span>
                    </div>
                    <input type="text" class="form-control" id="navbar-search-input" placeholder="{{ __('Header Search now') }}"
                        aria-label="search" aria-describedby="search">
                </div>
            </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
                <a class="nav-link dropdown-toggle" href="{{ secure_url('admin/update-admin-details') }}"
                    data-toggle="dropdown" id="profileDropdown">


                    {{-- Show the admin image if exists --}}
                    @if (!empty(Auth::guard('admin')->user()->image))
                        {{-- Accessing Specific Guard Instances: https://laravel.com/docs/9.x/authentication#accessing-specific-guard-instances --}}
                        <img src="{{ secure_url('admin/images/photos/' . Auth::guard('admin')->user()->image) }}"
                            alt="profile"> {{-- Accessing Specific Guard Instances: https://laravel.com/docs/9.x/authentication#accessing-specific-guard-instances --}}
                    @else
                        <img src="{{ secure_url('admin/images/photos/no-image.gif') }}" alt="profile">
                    @endif


                </a>
                <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                    <a href="{{ secure_url('admin/update-admin-details') }}" class="dropdown-item">
                        <i class="ti-settings text-primary"></i>
                        {{ __('Header Settings') }}
                    </a>
                    <a href="{{ secure_url('admin/logout') }}" class="dropdown-item">
                        <i class="ti-power-off text-primary"></i>
                        {{ __('Header Logout') }}
                    </a>
                </div>
            </li>
            <li class="nav-item nav-settings d-none d-lg-flex">
                <a class="nav-link" href="#">
                    <i class="icon-ellipsis"></i>
                </a>
            </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
            data-toggle="offcanvas">
            <span class="icon-menu"></span>
        </button>
    </div>
</nav>
<?php echo '<script> var areYouSure = "' . __('Are you sure you want to delete this?') . '";</script>'; ?>
<?php echo '<script> var passwordIncorrect = "' . __('Current Password is Incorrect!') . '";</script>'; ?>
<?php echo '<script> var passwordCorrect = "' . __('Current Password is Correct!') . '";</script>'; ?>

