<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SigninRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Validation\ValidationException;

class AuthController extends Controller
{
    public function create()
    {
        return inertia('Auth/Login');
    }
    public function store(SigninRequest $request)
    {
        $credentails = $request->only(['email','password']);
        if (!Auth::attempt($credentails)) {
            return back()
            ->withErrors([
                'error' => 'Your email  or password was wrong.'
            ])
            ->withInput();
        }
        $request->session()->regenerate();

        return redirect()->intended()->with('success', 'You login successfully');
    }

     public function destroy(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('home');
    }

}
