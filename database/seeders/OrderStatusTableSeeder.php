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
                'name'   => 'Nuevo',
                'status' => 1
            ],
            [
                'name'   => 'Pendiente',
                'status' => 1
            ],
            [
                'name'   => 'Cancelado',
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
                'name'   => 'Parcialmente Enviado', // if one order has products from different vendors, and one vendor has shipped their product to the customer while other vendor (or vendors) didn't!
                'status' => 1
            ],
            [
                'name'   => 'Entregado',
                'status' => 1
            ],
            [
                'name'   => 'Parcialmente entregado', // if one order has products from different vendors, and one vendor has shipped and DELIVERED their product to the customer while other vendor (or vendors) didn't!
                'status' => 1
            ],
            [
                'name'   => 'Pagado',
                'status' => 1
            ]
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\OrderStatus::insert($orderStatusRecords);
    }
}
