<?php

namespace App\Http\Controllers;

use App\Models\products;
use App\Models\Sections;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $sections = Sections::select('id', 'section_name')->get();
        $products = products::all();
        return view('products.products', compact('products', 'sections'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'product_name' => 'required',
            'product_description' => 'required',
            'section_id' => 'required',
        ]);

        $product = new products();
        $product->product_name = $request->product_name;
        $product->product_description = $request->product_description;
        $product->section_id = $request->section_id;
        $product->save();
        return redirect()->route('products.index')->with('Add', 'تم اضافة المنتج بنجاح');
    }

    /**
     * Display the specified resource.
     */
    public function show(products $products)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(products $products)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        $request->validate([
            'product_name' => 'required',
            'product_description' => 'required',
            'section_id' => 'required',
        ]);

        products::findOrFail($request->id)->update([
            'product_name' => $request->product_name,
            'product_description' => $request->product_description,
            'section_id' => Sections::where('section_name', $request->section_name)->first()->id,
        ]);
        return redirect()->back()->with('Edit', 'تم تعديل المنتج بنجاح');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        products::findOrFail($request->id)->delete();
        return redirect()->back()->with('Delete', 'تم حذف المنتج بنجاح');
    }
}
