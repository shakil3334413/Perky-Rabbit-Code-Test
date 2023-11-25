<?php

namespace App\Http\Controllers;

use inertia;
use App\Models\Employee;
use Illuminate\Http\Request;
use App\Http\Requests\EmployeeRequest;
use App\Http\Requests\UpdateEmployeeRequest;
use App\Models\Achievement;
use App\Models\Departmet;

class EmployeeController extends Controller
{
    public function index(Request $request)
    {
        $filters = $request->only([
            'name','email'
        ]);
        return inertia(
            'Employee/Index',[
                'filters' => $filters,
                'employees' => Employee::orderByDesc('created_at')
                                ->with('achievements','department')
                                ->filter($filters)
                                ->paginate(10)
                                ->withQueryString()
            ]
        );
    }
    public function create()
    {
        return inertia(
            'Employee/Create',[
                'achivments' =>  Achievement::all(),
                'departments' =>  Departmet::all()
            ]
        );
    }

    public function store(EmployeeRequest $request)
    {
        $employee = Employee::create($request->except('achievement_id'));
        $achivment_id = $request->achievement_id;
        $employee->achievements()->attach($achivment_id,['achievement_date' => now()]);
        return redirect()->route('employees.index')->with('success','Employee Create Successfully');
    }
    public function edit(Employee $employee)
    {
        $employee = Employee::with(['department','achievements'])->findOrFail($employee->id);
        return inertia(
            'Employee/EditData',[
                'achievements' => Achievement::all(),
                'departments' =>  Departmet::all(),
                'employee' => $employee
            ]
        );
    }

    public function update(UpdateEmployeeRequest $request, Employee $employee)
    {
        $employee->update($request->except('achievements'));
        $employee->achievements()->sync($request->input('achievements'));

        return redirect()->route('employees.index')->with('success', 'Employee updated successfully.');
    }
    public function destroy(Employee $employee)
    {
        $employee->delete();
        return redirect()->route('employees.index')->with('success', 'Employee deleted successfully.');
    }
}
