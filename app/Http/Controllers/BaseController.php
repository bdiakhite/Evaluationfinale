<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Player;

class BaseController extends Controller
{
    public function index()
    {
      $players = Player::all();
      return view('accueil', ['players'=>$players]);
    }
}
