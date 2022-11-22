<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Crap;
use App\Models\Result;
use App\Models\Transpool;
use Illuminate\Support\Str;

class ApiResult extends Controller
{
    public function upsertlist(Request $request){

        $getid = Crap::where('code',$request->code)->first();
        $check = Result::where('url_profile',$request->link)
                 ->first();
        
        if($check==null){
            $save = Result::insert([
                'id' => Str::uuid(),
                'crap_id' =>$getid->id,
                'url_profile'=>$request->link,
                'html'=>$request->folder,
                'folder'=>$request->code,
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
        }else{

            $update = Result::where('url_profile',$request->link)->update([
                'crap_id' =>$getid->id,
                'url_profile'=>$request->link,
                'html'=>$request->folder,
                'folder'=>$request->code,
            ]);

            if($update){
                return response()->json([
                    'status'=>'success',
                    'code'  =>200,
                    'message'=>'success update'
                ], 200);
            }else{
                return response()->json([
                    'status'=>'failed',
                    'code'  =>400,
                    'message'=>'failed update'
                ], 400);
            }
        }

    }

    public function update_get_profile(Request $request){

        $check = Result::where('url_profile',$request->link)
                 ->first();
        
        if($check){
            $update = Result::where('url_profile',$request->link)->update([
                'url_overlay'=>$request->url_overlay,
                'html_profile'=>$request->html_profile,
            ]);

            if($update){
                return response()->json([
                    'status'=>'success',
                    'code'  =>200,
                    'message'=>'success update'
                ], 200);
            }else{
                return response()->json([
                    'status'=>'failed',
                    'code'  =>400,
                    'message'=>'failed update'
                ], 400);
            }
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'data not exist'
            ], 400);
        }

    }

    public function show(Request $request){
        $check = Result::where('url_overlay',$request->url)->first();
        if($check){
            return response()->json([
                'status'=>'success',
                'code'  =>200,
                'message'=>'data is exist'
            ], 200);
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'data not exist'
            ], 400);
        }
    }

    public function url_list(Request $request){
        $check = Result::where('url_profile',$request->url)->first();
        if($check){
            return response()->json([
                'status'=>'success',
                'code'  =>200,
                'message'=>'data is exist'
            ], 200);
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'data not exist'
            ], 400);
        }
    }



    public function update(Request $request){

        $check = Result::where('url_overlay',$request->url_overlay)
                 ->first();
        
        if($check){
            $update = Result::where('url_overlay',$request->url_overlay)->update([
                'url_overlay'=>$request->url_overlay,
                'nama'=>$request->nama,
                'jabatan'=>$request->jabatan,
                'tentang'=>$request->tentang,
                'hp'=>$request->hp,
                'email'=>$request->email,
                'link'=>$request->link,
                'web'=>$request->web,
                'pengalaman'=>$request->pengalaman,
            ]);

            if($update){
                return response()->json([
                    'status'=>'success',
                    'code'  =>200,
                    'message'=>'success update'
                ], 200);
            }else{
                return response()->json([
                    'status'=>'failed',
                    'code'  =>400,
                    'message'=>'failed update'
                ], 400);
            }
        }else{
            return response()->json([
                'status'=>'failed',
                'code'  =>400,
                'message'=>'data not exist'
            ], 400);
        }

    }


    public function save(Request $request){

        $check = Result::where('url_profile',$request->url_profile)
                 ->first();
        
        if($check==null){
            $save = Result::insert([
                'id'            => Str::uuid(),
                'crap_id'       =>$request->crap_id,
                'url_profile'   =>$request->url_profile,
                'html_profile'  =>$request->html_profile,
                'folder'        =>$request->folder,
                'url_overlay'   =>$request->url_overlay,
                'nama'          =>$request->nama,
                'jabatan'       =>$request->jabatan,
                'tentang'       =>$request->tentang,
                'hp'            =>$request->hp,
                'email'         =>$request->email,
                'link'          =>$request->link,
                'web'           =>$request->web,
                'pengalaman'    =>$request->pengalaman,
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
    }
}
