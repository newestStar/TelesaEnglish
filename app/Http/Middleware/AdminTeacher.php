<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminTeacher
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
       dd('this is admin Teacher.');
        if(Auth::check() && Auth::user()->role_id == 1 && Auth::user()->status == 1){
            return $next($request);
        }else if(Auth::check() && Auth::user()->role_id == 5 && Auth::user()->status == 1){
            return $next($request);
        }else if(Auth::check() && Auth::user()->role_id == 2 && Auth::user()->status == 1){
            return $next($request);
        }else{
            Auth::logout();
            return redirect('/')->with('warning','you have no permission.');
        }
        
    }
}
