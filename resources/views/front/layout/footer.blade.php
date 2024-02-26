<!-- Footer -->
<footer class="footer">
    <div class="container">
        <!-- Outer-Footer -->
        <div class="outer-footer-wrapper u-s-p-y-80">
            <h6>
                {{ __('For special offers and other discount information') }}
            </h6>
            <h1>
                {{ __('Subscribe to our Newsletter') }}
            </h1>
            <p>
                {{ __('Subscribe to the mailing list to receive updates on promotions, new arrivals, discount and coupons.') }}
            </p>



            
            <form class="newsletter-form">
                <label class="sr-only" for="subscriber_email">{{ __('Enter your Email') }}</label>
                <input type="text" placeholder="{{ __('Your Email Address') }}" id="subscriber_email" name="subscriber_email" required> {{-- We'll use the HTML id Global Attribute in jQuery in front/js/custom.js --}} 
                <button type="button" class="button" onclick="addSubscriber()">{{ __('SUBMIT') }}</button> {{-- Check the addSubscriber() function in front/js/custom.js. We'll use it in conjunction with the    id="subscriber_email"    of the <input> field --}}
            </form>



        </div>
        <!-- Outer-Footer /- -->
        <!-- Mid-Footer -->
        <div class="mid-footer-wrapper u-s-p-b-80">
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-12">
                    <div class="footer-list">
                        <h6>{{ __('COMPANY') }} </h6>
                        <ul>
                            <li>
                                <a href="{{ url('about-us') }}">{{ __('About Us') }} </a>
                            </li>
                            <li>
                                <a href="{{ url('contact') }}">C{{ __('ontact Us') }} </a>
                            </li>
                            <li>
                                <a href="{{ url('faq') }}">{{ __('FAQ') }} </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- <div class="col-lg-3 col-md-3 col-sm-12">
                    <div class="footer-list">
                        <h6>COLLECTION</h6>
                        <ul>
                            <li>
                                <a href="{{ url('men') }}">Men Clothing</a>
                            </li>
                            <li>
                                <a href="{{ url('women') }}">Women Clothing</a>
                            </li>
                            <li>
                                <a href="{{ url('kids') }}">Kids Clothing</a>
                            </li>
                        </ul>
                    </div>
                </div> -->
                <div class="col-lg-3 col-md-3 col-sm-12">
                    <div class="footer-list">
                        <h6>{{ __('ACCOUNT') }}</h6>
                        <ul>
                            <li>
                                <a href="{{ url('user/account') }}">{{ __('My Account') }}</a>
                            </li>
                            <li>
                                <a href="{{ url('user/orders') }}">{{ __('My Orders') }}</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-3 col-sm-12">
                    <div class="footer-list">
                        <h6>{{ __('Contact') }}</h6>
                        <ul>
                            <li>
                                <i class="fas fa-location-arrow u-s-m-r-9"></i>
                                <span>Multi-vendor E-commerce Application</span>
                            </li>
                            <li>
                                <a href="tel:+201255845857">
                                <i class="fas fa-phone u-s-m-r-9"></i>
                                <span>+01255845857</span>
                                </a>
                            </li>
                            <li>
                                <a href="mailto:info@multi-vendore-commerce.com">
                                <i class="fas fa-envelope u-s-m-r-9"></i>
                                <span>
                                info@multi-vendore-commerce.com</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mid-Footer /- -->
        <!-- Bottom-Footer -->
        <div class="bottom-footer-wrapper">
            <div class="social-media-wrapper">
                <ul class="social-media-list">
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-facebook-f"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-google-plus-g"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fas fa-rss"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-pinterest"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-linkedin-in"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="#">
                        <i class="fab fa-youtube"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <p class="copyright-text">Copyright &copy; 2024
                <a target="_blank" rel="nofollow" href="#">E-commerce MBA</a> | {{ __('All Right Reserved') }}
            </p>
        </div>
    </div>
    <!-- Bottom-Footer /- -->
</footer>
<!-- Footer /- -->