<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Admin>
 */
class AdminFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        // return [
        //     'name' => fake()->name(),
        //     'email' => fake()->unique()->safeEmail(),
        //     'status' => 1,
        //     'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
        //     'type'      =>  fake()->randomElement(['superadmin']),
        //     'vendor_id' => 0, // `vendor_id` is one 1 because 'type' is 'vendor'
        //     'mobile'    => fake()->phoneNumber(11),
        //     'password'  => '$2a$12$xvkjSScUPRexfcJTAy9ATutIeGUuRgJrjDIdL/.xlrddEvRZINpeC', // This is the encryption of '123456'    // using https://bcrypt-generator.com/
        //     'image'     => '',
        //     'status'    => 1, // Our authentication logic in the login() method in the AdminController won't allow this admin logging in in case of 'status' = 0
        //     'confirm'    => 1,
        // ];

        return [
            'name' => fake()->name(),
            'email' => fake()->safeEmail(),
            'status' => 1,
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'type' => 'superadmin', // password
            'vendor_id' => '1', // password
            'mobile' => '09834254250', // password
            'confirm' => 'Yes', // password
        ];

                
    }
}
