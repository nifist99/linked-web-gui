<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Crap;
use App\Models\Result;

class ApiCrap extends Controller
{
    public function show($code){

        $data=Crap::where('code',$code)->first();

        return response()->json([
            "status"    =>"success",
            "code"      =>200,
            "id"        =>$data->id,
            "code"      =>$data->code,
            "username"  =>$data->username,
            "sandi"     =>$data->sandi,
            "url"       =>$data->url,
            "kategori"  =>$data->kategori,
            "start"     =>$data->start,
            "end"       =>$data->end
        ], 200);
    }
}
