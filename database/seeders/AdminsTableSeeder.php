<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AdminsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //


        // My code: (Check DatabaseSeeder.php page too)
        // Database Seeding    // https://laravel.com/docs/9.x/seeding
        // Note: Check DatabaseSeeder.php
        $adminRecords = [
            [
                'name'      => 'Administrador',
                'type'      => 'superadmin',
                'vendor_id' => 0, // `vendor_id` is zero 0 because 'type' is not 'vendor' (it's actually 'superadmin')
                'mobile'    => '9800000000',
                'email'     => 'admin@admin.com',
                'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
                'image'     => '',
                'status'    => 1,
                'confirm' => 'Yes'
            ],

            
            [
                'name'      => 'Vendedor',
                'type'      => 'vendor',
                'vendor_id' => 1, // `vendor_id` is one 1 because 'type' is 'vendor'
                'mobile'    => '9700000000',
                'email'     => 'john@admin.com',
                'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
                'image'     => '',
                'status'    => 1, // Our authentication logic in the login() method in the AdminController won't allow this admin logging in in case of 'status' = 0
                'confirm' => 'Yes'
            ],

            [
                'name'      => 'Hernando',
                'type'      => 'superadmin',
                'vendor_id' => 0, // `vendor_id` is one 1 because 'type' is 'vendor'
                'mobile'    => '9700000000',
                'email'     => 'hernando@admin.com',
                'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
                'image'     => '',
                'status'    => 1, // Our authentication logic in the login() method in the AdminController won't allow this admin logging in in case of 'status' = 0
                'confirm' => 'Yes'
            ],
            [
                'name'      => 'Raul',
                'type'      => 'superadmin',
                'vendor_id' => 0, // `vendor_id` is one 1 because 'type' is 'vendor'
                'mobile'    => '9700000000',
                'email'     => 'raul@admin.com',
                'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
                'image'     => '',
                'status'    => 1, // Our authentication logic in the login() method in the AdminController won't allow this admin logging in in case of 'status' = 0
                'confirm' => 'Yes'
            ],
            [
                'name'      => 'Mauricio',
                'type'      => 'superadmin',
                'vendor_id' => 0, // `vendor_id` is one 1 because 'type' is 'vendor'
                'mobile'    => '9700000000',
                'email'     => 'mauricio@admin.com',
                'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
                'image'     => '',
                'status'    => 1, // Our authentication logic in the login() method in the AdminController won't allow this admin logging in in case of 'status' = 0
                'confirm' => 'Yes'
            ],
        ];
        // Note: Check DatabaseSeeder.php
        \App\Models\Admin::insert($adminRecords);
        
    }
}
