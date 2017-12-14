@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1>creation</h1>
  <div class="formulaire background">
	    {!! Form::open(['url' => '/player/insert']) !!}
	      <div >
	        {{{ Form::label('Nom :') }}}
	        {{{ Form::text('name') }}}
	      </div>
	      <div >
	        {{{ Form::label('Taille (en cm) :') }}}
	        {{{ Form::number('size') }}}
	      </div>
	      <div >
	        {{{ Form::label('Age:') }}}
	        {{{ Form::number('age') }}}
	      </div>
	      <div >
	        {{{ Form::label('equipe') }}}
	        {{{ Form::select('team', $teams) }}}
	      </div>
	      <div >
	        {{{ Form::label('Poste :') }}}
	        {{{ Form::select('post[]', $posts, 0, ['multiple' => true]) }}}
	      </div>
	      <div >
	        {{{ Form::submit('Insérer un joueur') }}}
	      </div>
	    {!! Form::close() !!}
@endsection
