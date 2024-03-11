<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //

        // Databas Seeding
        // Note: Check DatabaseSeeder.php
        $categoryRecords = [
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 1, // 1 is the parent 'Cloting' section
                'category_name'     => 'Men',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'men',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 1, // 1 is the parent 'Cloting' section
                'category_name'     => 'Women',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'women',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 2, // 1 is the parent 'Cloting' section
                'category_name'     => 'Kids',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'kids',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 2, // 1 is the parent 'Cloting' section
                'category_name'     => 'Kid2',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'kids2',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 3, // 1 is the parent 'Cloting' section
                'category_name'     => 'Kids3',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'kids3',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 3, // 1 is the parent 'Cloting' section
                'category_name'     => 'Kids4',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'kids4',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 1, // 1 is the parent 'Cloting' section
                'category_name'     => 'Kids5',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'kids5',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
            [
                'parent_id'         => 0, // 0 because like Men, Women categories that don't have a prent category
                'section_id'        => 2, // 1 is the parent 'Cloting' section
                'category_name'     => 'Categoria8',
                'category_image'    => '',
                'category_discount' => 0,
                'description'       => '',
                'url'               => 'Categoria8',
                'meta_title'        => '',
                'meta_description'  => '',
                'meta_keywords'     => '',
                'status'            => 1,
            ],
        ];

        // Note: Check DatabaseSeeder.php
        \App\Models\Category::insert($categoryRecords);
    }
}
