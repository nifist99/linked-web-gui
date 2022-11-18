<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Crap;
use App\Models\Result;
use App\Models\Transpool;
use Illuminate\Support\Str;

class ApiCrap extends Controller
{
    public function show($code){

        $data=Crap::where('code',$code)->first();

        if($data){

            return response()->json([
                "status"    =>"success",
                "code"      =>200,
                "id"        =>$data->id,
                "code"      =>$data->code,
                "username"  =>$data->username,
                "sandi"     =>$data->link_pass,
                "url"       =>$data->url,
                "kategori"  =>$data->kategori,
                "start"     =>$data->start,
                "end"       =>$data->end
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
