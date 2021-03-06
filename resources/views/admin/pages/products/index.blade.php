@extends('admin.master')
@section('content')

<h1> {{__('Products')}}</h1>
<button class="btn btn-primary">{{$msg}}</button>
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
<div class="card m-4" style="padding-left: 250px; padding-right: 250px; text-align:center; background-color:#a8c8f7">
    <h3>Add Products</h3>
  <form action="{{route('products.store')}}" method="POST">
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
                <tbody>
                  @foreach($products as $key=>$value)

                          <tr>
                            {{-- @dd($volunteers) --}}
                            <th>{{$key+1}}</th>
                            <td>{{$value->name}}</td>
                            <td>{{$value->category}}</td>
                            <td>{{$value->price}}</td>
                            <td>{{$value->details}}</td>
                            <td>
                              <a class="btn btn-success btn-sm" href="{{route('products.show',$value->id)}}"><i class="fas fa-eye"></i></a> 
                              <form action="{{route('products.destroy',$value->id)}}" method="POST">
                                @csrf
                                @method('DELETE')
                                <div>
                                    <button class="btn btn-danger" type="submit"><i class="fas fa-trash"></i></button>
        
                                </div>
        
                                </form>
                            </td>
                          </tr>

                  @endforeach
                </tbody>
              </table>
</div>
@endsection
