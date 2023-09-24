<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Symfony\Component\HttpFoundation\Response;

class CheckUserStatus
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Check if the user is authenticated
        if (Auth::check()) {
            $user = Auth::user();
            // Check the user's status
            if ($user->Status === 'مفعل') {
                return $next($request);
            } else {
                // User status is not "مفعل," so deny access
                return abort(403, 'can not access this page for now you are not active');
            }
        }

        // User is not authenticated, proceed with the login
        return $next($request);
    }
}
