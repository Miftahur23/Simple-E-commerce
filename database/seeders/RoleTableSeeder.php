<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RoleTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $roles=['admin','manager'];
        foreach($roles as $role)
        {
            Role::create([
                'name'=>$role,
                'slug'=>$role,
            ]);
        }
    }
}
