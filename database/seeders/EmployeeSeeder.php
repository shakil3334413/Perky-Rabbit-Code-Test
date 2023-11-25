<?php

namespace Database\Seeders;

use App\Models\Achievement;
use App\Models\Employee;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class EmployeeSeeder extends Seeder
{
    public function run(): void
    {
        for ($i = 0; $i <= rand(10, 100); $i++) {
            $employee = Employee::factory()->create();
            $achivment = Achievement::all()->pluck('id')->toArray();
            $ids = fake()->randomElements($achivment, rand(1, 10));
            foreach ($ids as $id) {
                $employee->achievements()->attach($id, ['achievement_date' => now()]);
            }
        }
    }
}
