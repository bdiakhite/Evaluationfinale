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
      $players = Player::all();

      return view('accueil', ['players'=>$players]);
    }
}
