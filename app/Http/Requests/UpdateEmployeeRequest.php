<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;

class UpdateEmployeeRequest extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'email' => ['required|email',Rule::unique('employees')->ignore($this->employee)],
            'phone' => 'required|string|max:20',
            'address' => 'required|string|max:255',
            'achievement_id' => 'required',
            'department_id' => 'required'
        ];
    }
}
