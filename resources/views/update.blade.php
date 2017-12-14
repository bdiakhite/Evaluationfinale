@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1>update</h1>
  <div class="formulaire background">
	    {!! Form::open(['url' => '/player/update']) !!}
      {{{ Form::hidden('id', $player->id)}}}
	      <div >
	        {{{ Form::label('Nom :') }}}
	        {{{ Form::text('name', $player->name) }}}
	      </div>
	      <div >
	        {{{ Form::label('Taille (en cm) :') }}}
	        {{{ Form::number('size', $player->size) }}}
	      </div>
	      <div >
	        {{{ Form::label('Age:') }}}
	        {{{ Form::number('age', $player->age) }}}
	      </div>
	      <div >
	        {{{ Form::label('Equipe') }}}
	        {{{ Form::select('team', $teams, $player->team->id) }}}
	      </div>
	      <div >
	        {{{ Form::label('Poste :') }}}
          {{{ Form::select('post[]', $posts, $player->posts, array('multiple')) }}}
	      </div>
	      <div >
	        {{{ Form::submit('mettre a jour') }}}
	      </div>
	    {!! Form::close() !!}
@endsection
