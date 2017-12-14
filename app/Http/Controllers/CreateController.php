<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Team;
use App\Post;

class CreateController extends Controller
{
  public function index()
  {
    $teamsAll = Team::all();
    $teams = [];
    foreach ($teamsAll as $value) {
      $teams[$value->id] = $value->team;
    }
    $postsAll = Post::all();
    $posts = [];
    foreach ($postsAll as $value) {
      $posts[$value->id] = $value->post;
    }
    return view('create', ['teams' => $teams, 'posts' => $posts]);
  }
}
