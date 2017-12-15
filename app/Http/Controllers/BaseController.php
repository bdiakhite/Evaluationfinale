<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Player;
use App\Team;
use App\Post;

class BaseController extends Controller
{
    public function index()
    {
      $players = Player::orderBy('point', 'desc')->get();
      $a = 0;
      return view('accueil', ['players'=>$players, 'a'=>$a]);
    }
}
