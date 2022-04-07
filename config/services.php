<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Mailgun, Postmark, AWS and more. This file provides the de facto
    | location for this type of information, allowing packages to have
    | a conventional file to locate the various service credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
        'endpoint' => env('MAILGUN_ENDPOINT', 'api.mailgun.net'),
    ],

    'postmark' => [
        'token' => env('POSTMARK_TOKEN'),
    ],

    'ses' => [
        'key' => env('AWS_ACCESS_KEY_ID'),
        'secret' => env('AWS_SECRET_ACCESS_KEY'),
        'region' => env('AWS_DEFAULT_REGION', 'us-east-1'),
    
    ],

    
    'facebook' => [
        'client_id' => '344808800938382',
        'client_secret' => 'd7bb7860b751cfe1bb5c0a0e5adf69c1',
        'redirect' => 'https://simple-e-commerce.test/auth/facebook/callback',
    ],

    'github' => [
        'client_id' => '09280ddb96c2356ec04e',
        'client_secret' => '4d9d037fbd4f027277084e997120dac33363a97d',
        'redirect' => 'https://simple-e-commerce.test/auth/github/callback',
    ],

];
