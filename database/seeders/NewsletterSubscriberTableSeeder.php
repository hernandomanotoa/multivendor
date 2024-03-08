<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class NewsletterSubscriberTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        
        // Note: Check DatabaseSeeder.php!
        $subscriberRecords = [
            [
                'email'  => 'yasser100@yopmail.com',
                'status' => 1
            ],
            [
                'email'  => 'fouaad@gmail.com',
                'status' => 1
            ]
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\NewsletterSubscriber::insert($subscriberRecords);
    }
}
