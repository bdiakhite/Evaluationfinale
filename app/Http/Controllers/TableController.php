<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Player;
use App\Post;
use App\Team;


class TableController extends Controller
{
  public function index()
  {
    $players = Player::paginate(2);
    $players->withPath('custom/url');
    return view('table', ['players' => $players]);
  }
}
