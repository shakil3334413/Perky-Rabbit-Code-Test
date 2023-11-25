<?php

namespace Database\Seeders;

use App\Models\Departmet;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DepartmentSeeder extends Seeder
{

    public function run(): void
    {
        $createMultipleDepartments = [
            ['name'=>'HR'],
            ['name'=>'Software Department'],
            ['name'=>'Civil Department'],
            ['name'=>'Android Department'],
            ['name'=>'SQA'],
            ['name'=>'Data Entry'],
            ['name'=>'Artificial intelligence (AI)'],
        ];

        Departmet::insert($createMultipleDepartments);
    }
}
