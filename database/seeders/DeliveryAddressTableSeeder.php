<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DeliveryAddressTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        // Note: Check DatabaseSeeder.php!
        $deliveryRecords = [
            [
                'user_id' => 1,
                'name'    => 'Jenny Samchez',
                'address' => '37 Salah Salem',
                'city'    => 'Guayaquil',
                'state'   => 'Guayas',
                'country' => 'Ecuador',
                'pincode' => 170602,
                'mobile'  => '0983437777',
                'status'  => 1
            ],
            [
                'user_id' => 1, // the same user_id in the previous record which means the the delivery address is for the same person
                'name'    => 'Hernando Manotoa',
                'address' => '15 Fouaad St.',
                'city'    => 'Quito',
                'state'   => 'Pichincha',
                'country' => 'Ecuador',
                'pincode' => 170202,
                'mobile'  => '0998743215',
                'status'  => 1
            ],
        ];

        // Note: Check DatabaseSeeder.php!
        \App\Models\DeliveryAddress::insert($deliveryRecords);
    }
}
