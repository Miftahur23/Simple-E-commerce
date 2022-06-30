<?php

namespace App\Http\Controllers;

use App\Events\ProductEvent;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest;
use App\Http\Resources\ProductsResource;
use App\Models\Manager;
use App\Notifications\emailNotification;
use Illuminate\Support\Facades\Cache;
use App\Repositories\ProductRepository;
use App\Traits\HasApiResponsesTrait;

class ProductsController extends Controller
{
    use HasApiResponsesTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Cache::has('Products'))
      {
          $products=Cache::get('Products');
          $data=ProductsResource::collection($products);
          $msg='Data from cache';
      }else
      {
          $products=Product::all();
          $data=ProductsResource::collection($products);
          Cache::put('Products',$products);
          $msg='Data from Database';
      }
        //return view('admin.pages.products.index',compact('products','msg'));
        
        return $this->responseWithSuccess('Product List Loaded',[$data]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

   
    /**
     * @param ProductRequest $request
     * @param ProductRepository $product_create
     * 
     * @return [type]
     */
    public function store(ProductRequest $request, ProductRepository $product_create)
    {
        {
            $createdProduct= $product_create->store($request);

        //  Toastr::success('Product Created Successfully', 'success');
        
            event(new ProductEvent($createdProduct));

            // $manager=Manager::find(1)->notify(new emailNotification());

            $managers=Manager::all();
            //dd($managers);
            foreach($managers as $manager)
            {
                $manager->notify(new emailNotification($manager->name,$manager->email));
            }

            //return redirect()->route('products.index');
            return $this->responseWithSuccess('Product Created',[$createdProduct]);

        }
    }


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id,ProductRepository $product_repository)
    {
        $product=$product_repository->find($id);
        //return view('admin.pages.products.view',compact('product'));
        return $this->responseWithSuccess('Product Details',[$product]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $product=Product::find($id)->update([
            'name'=>$request->name,
            'category'=>$request->category,
            'price'=>$request->price,
            'details'=>$request->details,
        ]);

        return $this->responseWithSuccess('Product Updated',[$product]);

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $delProduct=Product::findOrFail($id)->delete();
        // Toastr::error('Product Deleted Successfully');
        event(new ProductEvent($delProduct));
        //return redirect()->back(); 

        return $this->responseWithSuccess('Product Deleted',[$delProduct]);

    }
}
