<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Achievement;
use App\Models\Departmet;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{

    public function run(): void
    {
        if (app()->environment('local')) {
            $this->call([
                UserSeeder::class,
                DepartmentSeeder::class,
                AchievementSeeder::class,
                EmployeeSeeder::class,
            ]);
        }
    }
}
