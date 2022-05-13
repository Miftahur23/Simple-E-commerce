@extends('admin.master')
@section('content')
<div class="container">
    <h1>Product Details</h1>
    <hr>
    <p><b>Name: {{$product->name}}</b></p>
    <p><b>Category: {{$product->category}}</b></p>
    <p><b>Price: {{$product->price}}</b></p>
    <p><b>Details: {{$product->details}}</b></p>

        {{-- <p>
        <td><img src="{{url('/uploads/volunteers/'.$volunteer->image)}}" style="border-radius:4px" width="200px" alt="cause image"></td>
        </p> --}}
    </div>
@endsection