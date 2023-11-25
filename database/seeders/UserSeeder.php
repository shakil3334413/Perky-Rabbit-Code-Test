<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class UserSeeder extends Seeder
{
    
    public function run(): void
    {
        if (app()->environment('local')) {
            $this->local();
        } else {
            $this->production();
        }
    }
    private function local()
    {
        
        $createMultipleUsers = [
            ['name'=>'Super Admin','email'=>'superadmin@gmail.com','password' => Hash::make('password')],
            ['name'=>'Admin','email'=>'admin@gmail.com','password' => Hash::make('password')],
            ['name'=>'Guest','email'=>'guest@gmail.com','password' => Hash::make('password')]
        ];
        
        User::insert($createMultipleUsers);

    }

    private function production()
    {
        User::create([
            'name' => 'Shakil',
            'email' => 'production@example.com',
            'password' => Hash::make('secret')
        ]);
    }
}
