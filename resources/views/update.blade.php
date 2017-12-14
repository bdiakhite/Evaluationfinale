@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1>update</h1>
  <div class="">
	    {!! Form::open(['url' => '/player/update']) !!}
      {{{ Form::hidden('id', $player->id)}}}
	      <div class="form-group">
	        {{{ Form::label('Nom :') }}}
	        {{{ Form::text('name', $player->name) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Taille (en cm) :') }}}
	        {{{ Form::number('size', $player->size) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Age:') }}}
	        {{{ Form::number('age', $player->age) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Equipe') }}}
	        {{{ Form::select('team', $teams, $player->team->id) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Poste :') }}}
          {{{ Form::select('post[]', $posts, $player->posts, ['multiple' => 'true']) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::submit('mettre a jour', ['class' => 'btn btn-dark']) }}}
	      </div>
	    {!! Form::close() !!}
@endsection
