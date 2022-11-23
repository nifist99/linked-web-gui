<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Instagram;
use App\Models\InstagramResult;
use Illuminate\Support\Str;

class ApiInstagramResult extends Controller
{
    public function save(Request $request){

            $save = InstagramResult::insert([
                'instagram_id'          =>$request->instagram_id,
                'bio'                   =>$request->bio,
                'id_ig'                 =>$request->id_ig,
                'business_category_name'=>$request->business_category_name,
                'username'              =>$request->username,
                'external_url'          =>$request->external_url,
                'external_url_linkshimmed'=>$request->external_url_linkshimmed,
                'full_name'               =>$request->full_name,
                'profile_pic_url'         =>$request->profile_pic_url,
                'email'                   =>$request->email,
                'phone'                   =>$request->phone,
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

    public function check($username){
        $save = InstagramResult::where('username',$username)->first();

        if($save){
            return response()->json([
                'status'=>'success',
                'code'  =>200,
                'message'=>'data sudah ada'
            ], 200);
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'oke lanjut save'
            ], 400);
        }
    }
}
