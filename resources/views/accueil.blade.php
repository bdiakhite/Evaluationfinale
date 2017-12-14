@extends('layouts.base')
@section('title', 'Accueil')
@section('main')
	<h1>accueil</h1>
	<table class="table table-dark">
		<thead class="thead-dark">
			<th>Nom</th>
			<th>Taille</th>
			<th>Age</th>
			<th>Equipe</th>
			<th>Poste</th>
			<th colspan="2">option</th>
		</thead>
		<tbody>
			@foreach ($players as $player)
				<tr>
					<td> {{ $player->name }}</td>
	        <td> {{ $player->size }}</td>
	        <td> {{ $player->age }}</td>
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
				</tr>
			@endforeach
		</tbody>
	</table>
@endsection
