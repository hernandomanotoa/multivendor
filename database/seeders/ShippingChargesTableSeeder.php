<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class ShippingChargesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
		$shippingCharges = array(
			array(
                'country' => 'Ecuador', 
                '0_500g' => '00.00',
                '501g_1000g' => '00.00',
                '1001_2000g' => '00.00',
                '2001g_5000g' => '00.00',
                'above_5000g' => '00.00',
                'status' => '1',
                'created_at' => Now(),
                'updated_at' => Now(),
            ),
            array(
                'country' => 'Colombia', 
                '0_500g' => '10.00',
                '501g_1000g' => '20.00',
                '1001_2000g' => '30.00',
                '2001g_5000g' => '40.00',
                'above_5000g' => '50.00',
                'status' => '1',
                'created_at' => Now(),
                'updated_at' => Now(),
            ),
		);

        \App\Models\ShippingCharge::insert($shippingCharges);
    }
}
