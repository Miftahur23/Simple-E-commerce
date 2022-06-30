<?php

namespace Database\Seeders;

use App\Models\Manager;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name'=>'ADMIN',
            'email'=>'admin@gmail.com',
            'password'=>bcrypt('1234'),
            'role_id'=>1,

        ]);

        DB::table('managers')->insert([
            'name'=>'MANAGER',
            'email'=>'manager@gmail.com',
            'password'=>bcrypt('1234'),
            'role_id'=>2,
        ]);

        Manager::factory()->count(10)->create();
    }
}
