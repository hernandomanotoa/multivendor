<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FiltersValuesTableSeeder extends Seeder
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
        $filtervalueRecords = [
        ];
        // Note: Check DatabaseSeeder.php!
        \App\Models\ProductsFiltersValue::insert($filtervalueRecords);
    }
}
