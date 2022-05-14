<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
   
    /**
     * @return bool
     */
    public function authorize()
    {
        // if(auth()->user()->role=='admin')
        // {
        //     return true;
        // }
        
        // return false;
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {

        return [
            'name'=>'required',
            'category'=>'required',
            'price'=>'required',
            'details'=>'required',
        ];
    }
}
