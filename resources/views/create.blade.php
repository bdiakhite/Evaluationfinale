@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1 id="encre">ajout</h1>
  <div class="">
	    {!! Form::open(['url' => '/player/insert']) !!}
	      <div class="form-group">
	        {{{ Form::label('Nom :') }}}
	        {{{ Form::text('name') }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Taille (en cm) :') }}}
	        {{{ Form::number('size') }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Age:') }}}
	        {{{ Form::number('age') }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('point/match:') }}}
	        {{{ Form::number('point', 'point', ['step'=>'any']) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('equipe') }}}
	        {{{ Form::select('team', $teams) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::label('Poste :') }}}
	        {{{ Form::select('post[]', $posts, 0, ['multiple' => true]) }}}
	      </div>
	      <div class="form-group">
	        {{{ Form::submit('Insérer un joueur', ['class' => 'btn btn-dark'])}}}
	      </div>
	    {!! Form::close() !!}
@endsection
