<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class PlaceController extends Controller
{
  public function getPlace($r_id)
  {
    $data = array();
    $data['status'] = 'ok';
        $data['places'] = DB::table('place')->where('r_id',$r_id)->get();  //query builder

        return response()->json($data);

      }

      public function getRoute(){
        $data = array();
        $data['status'] = 'ok';
        $data['routes'] = DB::table('route')->get();  //query builder

        return response()->json($data);
      }

      public function getBuses($route, $source, $destination){
        $data = array();

        $data['status'] = 'ok';
        $data['buses'] = DB::table($route)
        ->select('bus_name')
        ->where($source,'y')
        ->where($destination,'y')
        ->get();


        return response()->json($data);
      }
    }
