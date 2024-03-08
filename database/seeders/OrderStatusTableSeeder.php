<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class OrderStatusTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        // Note: Check DatabaseSeeder.php!
        $orderStatusRecords = [
            [
                'name'   => 'New',
                'status' => 1
            ],
            [
                'name'   => 'Pending',
                'status' => 1
            ],
            [
                'name'   => 'Canceled',
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
                'name'   => 'Partially Shipped', // if one order has products from different vendors, and one vendor has shipped their product to the customer while other vendor (or vendors) didn't!
                'status' => 1
            ],
            [
                'name'   => 'Delivered',
                'status' => 1
            ],
            [
                'name'   => 'Partially Delivered', // if one order has products from different vendors, and one vendor has shipped and DELIVERED their product to the customer while other vendor (or vendors) didn't!
                'status' => 1
            ],
            [
                'name'   => 'Paid',
                'status' => 1
            ]
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\OrderStatus::insert($orderStatusRecords);
    }
}
