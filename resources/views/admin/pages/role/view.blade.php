@extends('admin.master')
@section('content')
    
<h3> Permissions </h3>

<p><b>Name: {{$view->role->name}}</b></p>
<p>Permissions:
    <?php
    foreach($view->permission as $views)
    {{$views->name}
    ?>


@endsection 