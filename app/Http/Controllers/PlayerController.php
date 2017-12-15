<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Player;
use App\Team;
use App\Post;

class PlayerController extends Controller
{

  public function insertOne(Request $request)
     {
       $player = new Player;
    	 $player->name = $request->name;
       $player->size = $request->size;
       $player->age = $request->age;
       $player->point = $request->point;
       $player->team_id = $request->team;
       $player->save();
       $player->posts()->attach($request->post);
       return redirect('/');
     }
  public function deleteOne(Request $request, $id)
    {
      $player = Player::find($id);
      $player->posts()->detach(); //Enlève les entrées dans la table intermédiaire ! IMPORTANT !
      $player->delete();
      return redirect ('/');
    }
  public function updateOne(Request $request, $id)
   {
     $player = Player::find($id);
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
     return view('update', ['teams' => $teams, 'posts' => $posts, 'player' => $player]);
   }
     public function updateOneAction(Request $request)
    {
      $player = player::find($request->id);
      $player->name = $request->name;
      $player->size = $request->size;
      $player->age = $request->age;
      $player->point = $request->point;
      $player->team_id = $request->team;
      $player->posts()->detach();
      $player->posts()->attach($request->post);
      $player->save();
      return redirect('/');
    }

}
