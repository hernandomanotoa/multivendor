<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
class CountriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
		$countries = array(
			array('status' => 1, 'country_code' => 'EC', 'country_name' => 'Ecuador', 'created_at' => Now(),
			'updated_at' => Now(),),
			array('status' => 1, 'country_code' => 'CO', 'country_name' => 'Colombia', 'created_at' => Now(),
			'updated_at' => Now(),),
		);

        \App\Models\Country::insert($countries);
    }
}
