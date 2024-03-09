<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class BrandsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        
        // Note: Check DatabaseSeeder.php!
        $brandRecords = [
            ['name' => 'Arrow'  , 'status' => 1],
            ['name' => 'Gap'    , 'status' => 1],
            ['name' => 'Lee'    , 'status' => 1],
            ['name' => 'Samsung', 'status' => 1],
            ['name' => 'LG'     , 'status' => 1],
            ['name' => 'Lenovo' , 'status' => 1],
            ['name' => 'MI'     , 'status' => 1],
        ];
        // Note: Check DatabaseSeeder.php!
        \App\Models\Brand::insert($brandRecords);
    }
}
