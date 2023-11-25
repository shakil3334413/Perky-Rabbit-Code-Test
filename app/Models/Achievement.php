<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Achievement extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
    ];
    public function employees()
    {
        return $this->belongsToMany(Employee::class, 'achievement_employee', 'achievement_id', 'employee_id')
            ->withPivot('achievement_date');
    }
}
