<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OrderItemStatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        // Note: Check DatabaseSeeder.php!
        $orderItemStatusRecords = [
            [
                'name'   => 'Pending',
                'status' => 1
            ],
            [
                'name'   => 'In Progress',
                'status' => 1
            ],
            [
                'name'   => 'Shipped',
                'status' => 1
            ],
            [
                'name'   => 'Delivered',
                'status' => 1
            ]
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\OrderItemStatus::insert($orderItemStatusRecords);
    }
}
