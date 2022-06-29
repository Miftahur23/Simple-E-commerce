<?php

namespace App\Http\Controllers;

use App\Events\ProductEvent;
use App\Models\Product;
use Illuminate\Http\Request;
use App\Http\Requests\ProductRequest;
use App\Models\Manager;
use App\Notifications\emailNotification;
use Illuminate\Support\Facades\Cache;
use App\Repositories\ProductRepository;

class ProductsController extends Controller
{
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
          $msg='Data from cache';
      }else
      {
          $products=Product::all();
          Cache::put('Products',$products);
          $msg='Data from Database';
      }
        
        return view('admin.pages.products.index',compact('products','msg'));
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

            return redirect()->route('products.index');
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
        return view('admin.pages.products.view',compact('product'));
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
        //
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
        return redirect()->back(); 
    }
}
