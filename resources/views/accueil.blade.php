@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1 id="encre">accueil</h1>
	<p>Bonjour voici le classement des meilleurs joueur de cette saison NBA Selon la moyenne de leur nombre de point par match.</p>
	<input type="text" class="form-control form-control-lg"  id="myInput" onkeyup="search()" placeholder="recherche par nom">
	<div class="konami hide">
		<img src="./css/img/moi.gif" alt="moi">
		<img src="./css/img/val.gif" alt="moi">
	</div>
	<table id="myTable" class="table ">
		<thead class="thead-dark">
		 <th>rank</th>
			<th>Nom</th>
			<th>Taille</th>
			<th>Age</th>
			<th>point/match</th>
			<th>Equipe</th>
			<th>Poste</th>
			<th colspan="2">option</th>
		</thead>
		<tbody  id="myTable" >
			@foreach ($players as $player)
				<tr>
					<td>{{++$a}}</td>
					<td> {{ $player->name }}</td>
	        <td> {{ $player->size }}cm</td>
	        <td> {{ $player->age }}</td>
	        <td> {{ $player->point }}</td>
	        <td> {{ $player->team->team }}</td>
	        <td>
	          @foreach ($player->posts as $post)
	           {{ $post->post }}
	          @endforeach
	        </td>
					<td>
			      <form action="/player/update/{{$player->id}}" method="get">
			            {{ csrf_field() }}
			            <button type="submit" class="btn btn-outline-info delete-btn">update</button>
			        </form>
 					</td>
					<td>
						 <form action="/player/delete/{{$player->id}}" method="get">
								 {{ csrf_field() }}
								 <button type="submit" class="btn btn-outline-danger delete-btn">delete</button>
							</form>
					</td>
			@endforeach
		</tr>
		</tbody>
	</table>
@endsection
