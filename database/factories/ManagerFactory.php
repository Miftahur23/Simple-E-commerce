<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Manager>
 */
class ManagerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
            $domain = 'gmail.com';
            $username = $this->faker->username();
            $email = $username.'@'.$domain;
        return [
            'role_id' => 2,
            'name' => $username,
            'email' => $email,
            'password' => bcrypt(1234),
        ];
    }
}

