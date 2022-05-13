<?php

namespace App\Listeners;

use App\Events\ProductEvent;
use Illuminate\Support\Facades\Cache;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;

class ProductEventListener
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
     * @param  \App\Events\ProductEvent  $event
     * @return void
     */
    public function handle(ProductEvent $event)
    {
        if(Cache::has('Products')){
            Cache::forget('Products');
        }
    }
}
