<?php

namespace Database\Seeders;

use App\Models\Achievement;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class AchievementSeeder extends Seeder
{

    public function run(): void
    {
        $createMultipleAchivments = [
            ['name'=>'Problem solving'],
            ['name'=>'Supporting a loved one'],
            ['name'=>'Sports accomplishments '],
            ['name'=>'Overcome a challenge'],
            ['name'=>'Realize your goals'],
            ['name'=>'Help you land a job interview'],
            ['name'=>'Facilitate a career change'],
            ['name'=>'Land your first job after college'],
            ['name'=>'Learned a new language'],
            ['name'=>'Organized an event to raise money for charity'],
            ['name'=>'Earned a new degree or certification while working full-time'],
        ];

        Achievement::insert($createMultipleAchivments);
    }
}
