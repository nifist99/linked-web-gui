<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Crap;
use App\Models\Result;
use App\Models\Transpool;
use Illuminate\Support\Str;
use DB;

class ApiTranspool extends Controller
{
    public function store(Request $request){

            $save = Transpool::insert([
                'code'        =>$request->code,
                'html'        =>$request->html,
                'html_profile'=>$request->html_profile,
                'url_profile' =>$request->url_profile,
                'url_overlay' =>$request->url_overlay,
            ]);

            if($save){
                return response()->json([
                    'status'=>'success',
                    'code'  =>200,
                    'message'=>'success save'
                ], 200);
            }else{
                return response()->json([
                    'status'=>'failed',
                    'code'  =>400,
                    'message'=>'failed save'
                ], 400);
            }

    }

    public function index(){
        $data  = Transpool::all();
        $total = Transpool::count();

        if($total!=0){
            return response()->json([
                'status'=>'success',
                'code'  =>200,
                'message'=>'success get',
                'data' => $data,
                'total' => $total
            ], 200);
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'failed get'
            ], 400);
        }
    }

    public function delete(){
        $del = DB::table('transpool')->truncate();

        if($del){
            return response()->json([
                'status'=>'success',
                'code'  =>200,
                'message'=>'success delete'
            ], 200);
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'failed delete'
            ], 400);
        }
    }
}
