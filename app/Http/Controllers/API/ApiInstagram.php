<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Instagram;
use App\Models\InstagramResult;
use Illuminate\Support\Str;

class ApiInstagram extends Controller
{
    public function index($code){
        $data=Instagram::where('code',$code)->first();

        if($data){

            return response()->json([
                "status"    =>"success",
                "code"      =>200,
                "id"        =>$data->id,
                "code"      =>$data->code,
                "username"  =>$data->username,
                "sandi"     =>$data->ig_pass,
                "url"       =>$data->url,
                "search"    =>$data->search,
                "hastag"    =>$data->hastag,
                "lokasi"    =>$data->lokasi,
            ], 200);
        }else{
            $res =[
                "status"    =>"failed",
                "code"      =>200,
                "message"   =>'data tidak ditemukan check code',
            ];
            return response()->json($res, 200);
        }
    }
}
