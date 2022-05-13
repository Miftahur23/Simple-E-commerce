<?php

namespace App\Listeners;

use App\Events\ProductCreateEvent;
use Illuminate\Support\Facades\Cache;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class ProductCreateEventListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  \App\Events\ProductCreateEvent  $event
     * @return void
     */
    public function handle(ProductCreateEvent $event)
    {
        if(Cache::has('Products')){
            Cache::forget('Products');
        }
    }
}
