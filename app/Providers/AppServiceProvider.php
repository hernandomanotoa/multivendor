<?php

namespace App\Providers;

use Illuminate\Routing\UrlGenerator;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    // public function boot()
    // {
    //     // Customizing The Pagination View Using Bootstrap (displaying Laravel pagination using Bootstrap pagination): https://laravel.com/docs/9.x/pagination#using-bootstrap
    //     \Illuminate\Pagination\Paginator::useBootstrap();
    // }
    public function boot(\Illuminate\Http\Request $request, UrlGenerator $url)
    {
        
        if (!empty( env('NGROK_URL') ) && $request->server->has('HTTP_X_ORIGINAL_HOST')) {
            $this->app['url']->forceRootUrl(env('NGROK_URL'));
        }
        if (env('APP_ENV') !== 'local') { //so you can work on it locally
            $url->forceScheme('https');
        }
        \Illuminate\Pagination\Paginator::useBootstrap();

        // other code
}
}