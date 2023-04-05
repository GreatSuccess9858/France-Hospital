<?php

namespace App\Http\Controllers;

use App\Events\ChatDoctor;
use App\Models\Order;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth')->except('getDoctors');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function receive(Request $request)
    {
        //
        $this->validate($request, [
            'doctor_id' => 'required|integer',
        ]);
        if($request->get('name','') !== '') {
            $order = Order::create(['user_id' => $request->get('doctor_id'), 'customer_name' => $request->get('name')]);
            ChatDoctor::dispatch($order);
            return response()->json(['status'=>true]);
        }

        return response()->json(['status'=>false]);
    }

    public function getDoctors(Request $request)
    {
        $doctors = User::where('type',1)->get();
        return response()->json($doctors);
    }
}
