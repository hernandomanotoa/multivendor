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
                'name'   => 'Pendiente',
                'status' => 1
            ],
            [
                'name'   => 'En curso',
                'status' => 1
            ],
            [
                'name'   => 'Enviado',
                'status' => 1
            ],
            [
                'name'   => 'Entregado',
                'status' => 1
            ]
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\OrderItemStatus::insert($orderItemStatusRecords);
    }
}
