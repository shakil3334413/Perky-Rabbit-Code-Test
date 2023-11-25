<?php

namespace App\Models;

use App\Models\Departmet;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Employee extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'email',
        'phone',
        'address',
        'department_id'
    ];
    public function department()
    {
        return $this->belongsTo(Departmet::class);
    }

    public function achievements()
    {
        return $this->belongsToMany(Achievement::class, 'achievement_employee', 'employee_id', 'achievement_id')
            ->withPivot('achievement_date');
    }
    public function scopeFilter(Builder $query, array $filters): Builder
    {
        return $query->when(
            $filters['name'] ?? false,
            fn ($query, $value) => $query->where('name', 'like','%'.$value.'%')
        )->when(
            $filters['email'] ?? false,
            fn ($query, $value) => $query->where('email','like','%'.$value.'%')
        );
    }
}
