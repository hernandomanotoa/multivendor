<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FiltersTableSeeder extends Seeder
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
        $filterRecords = [

        ];
        // Note: Check DatabaseSeeder.php!
        \App\Models\ProductsFilter::insert($filterRecords);
    }
}
