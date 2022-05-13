<?php

namespace App\Providers;

use App\Events\ProductEvent;
use App\Events\ProductCreateEvent;
use Illuminate\Support\Facades\Event;
use Illuminate\Auth\Events\Registered;
use App\Listeners\ProductEventListener;
use App\Listeners\ProductCreateEventListener;
use Illuminate\Auth\Listeners\SendEmailVerificationNotification;
use Illuminate\Foundation\Support\Providers\EventServiceProvider as ServiceProvider;

class EventServiceProvider extends ServiceProvider
{
    /**
     * The event listener mappings for the application.
     *
     * @var array
     */
    protected $listen = [
        Registered::class => [
            SendEmailVerificationNotification::class,
        ],
        
        ProductEvent::class=>[
            ProductEventListener::class,
           
        ],
        ProductCreateEvent::class=>[
            ProductCreateEventListener::class,
           
        ]
    ];

    /**
     * Register any events for your application.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
