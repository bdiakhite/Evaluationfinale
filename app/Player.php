<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Team;
use App\Post;

class Player extends Model
{
     public $timestamps = false;
     public function team()
  	{
   	 return $this->belongsTo('App\Team');
  	}
  	public function posts()
   	{
      return $this->belongsToMany('App\Post');
   	}
}
