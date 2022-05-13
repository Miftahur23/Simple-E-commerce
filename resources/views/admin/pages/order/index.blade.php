@extends('admin.master')
@section('content')

<h1>Orders</h1>
{{-- <button class="btn btn-primary">{{$msg}}</button> --}}
<hr>
@if ($errors->any())
    <div class="alert alert-warning" role="alert">
        <ul>
              @foreach ($errors->all() as $error)
                  <li>
                      {{$error}}
                  </li>   
              @endforeach
        </ul>
    </div>
@endif

 {{-- <a href="{{route('create.category')}}" button type="submit" class="btn btn-primary">Create Category</button> </a> --}}
 <div class="container" style="display: flex; width:60%;">
<div class="card m-4" style=" text-align:center; background-color:#a8c8f7; width:40%">
    <h3>Add Products</h3>
  <form action="#" method="POST">
    @csrf
    <div class="row">
          <div class="form-group col-6">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Product Name">
          </div>
          <div class="form-group col-6">
            <label for="name">Category</label>
            <input type="text" class="form-control" id="name" name="category" placeholder="Category">
          </div>
          <div class="form-group col-6">
            <label for="name">Price</label>
            <input type="number" class="form-control" id="name" name="price" placeholder="Price">
          </div>
          <div class="form-group col-6">
              <label for="email">Details</label>
              <input type="text" class="form-control" id="email" name="details" placeholder="Details">
          </div>
    </div>
    <button type="submit" class="btn btn-success btn-sm mt-2 mb-3" style="text-align:right;">Save</button>
  </form>
</div>
<hr>

<div>
              <table class="table" style="text-align: center;">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Price</th>
                    <th scope="col">Details</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
              
              </table>
</div>
</div>
@endsection
