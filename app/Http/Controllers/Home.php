<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Project;
use App\Models\Biodata;

class Home extends Controller
{
    public function index(){

        $projects = DB::table('project')->get();
        $biodata = DB::table('biodata')->first();
        $skill = DB::table('skill')->first();



        return view('welcome',compact('biodata','skill','projects'));


    }
}
