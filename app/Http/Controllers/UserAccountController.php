<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Requests\SingUpRequest;
use Illuminate\Support\Facades\Auth;

class UserAccountController extends Controller
{
    public function create()
    {
        return inertia('Auth/Register');
    }
    public function store(SingUpRequest $request)
    {
        $user = User::create($request->all());
        Auth::login($user);
        return redirect()->intended()->with('success', 'You Register successfully');
    }
}
