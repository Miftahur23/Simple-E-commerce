<?php
namespace App\Repositories;

use App\Models\Product;
use http\Env\Request;
use http\Env\Response;


class ProductRepository
{
    public function find($id)
    {
        $product_repository=Product::find($id);
        return $product_repository;
    }
    public function store($request)
    {
        $product=Product::create([
            'name'=>$request->name,
            'category'=>$request->category,
            'price'=>$request->price,
            'details'=>$request->details,
        ]);
        return $product;

    }
}
