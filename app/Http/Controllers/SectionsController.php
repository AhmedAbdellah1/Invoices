<?php

namespace App\Http\Controllers;

use App\Models\Sections;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SectionsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sections = Sections::all();

        return view('sections.sections', compact('sections'));
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

        // للتاكد من التسجيل مسبقا
        // $input = $request->all();
        // $db_sections_exists = Sections::where('section_name', $input['section_name'])->exists();
        // if ($db_sections_exists) {
        //     return redirect()->back()->with(['Error' => 'خطاء القسم مسجل مسبقا']);
        // } else {
        //     sections::create([
        //         'section_name' => $request->section_name,
        //         'section_description' => $request->section_description,
        //         'created_by' => (Auth::user()->name),
        //     ]);
        //     session()->flash('Add', 'تم اضافة القسم بنجاح');
        //     return redirect('/sections');
        // }

        // or
        $request->validate([
            // this for rules
            'section_name' => 'required|unique:sections,section_name|max:255',
            'section_description' => 'required',
        ], [

            // this for messages
            'section_name.required' => 'يرجي ادخال اسم القسم',
            'section_name.unique' => 'اسم القسم مسجل مسبقا',
            'section_description.required' => 'يرجي ادخال البيان',
        ]);

        sections::create([
            'section_name' => $request->section_name,
            'section_description' => $request->section_description,
            'created_by' => (Auth::user()->name),
        ]);
        session()->flash('Add', 'تم اضافة القسم بنجاح');
        return redirect('/sections');
    }


    /**
     * Display the specified resource.
     */
    public function show(Sections $sections)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Sections $sections)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request)
    {
        // $id = $request->id;

        $request->validate([

            'section_name' => 'required|max:255|unique:sections,section_name,' . $request->id,
            //$request->id used to exclude the current record from the uniqueness check
            
            'section_description' => 'required',
        ], [

            'section_name.required' => 'يرجي ادخال اسم القسم',
            'section_name.unique' => 'اسم القسم مسجل مسبقا',
            'section_description.required' => 'يرجي ادخال البيان',

        ]);
        $sections = sections::find($request->id);
        $sections->update([
            'section_name' => $request->section_name,
            'section_description' => $request->section_description,
        ]);
        return redirect()->back()->with('edit', 'تم تعديل القسم بنجاج');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $sections = sections::find($request->id)->delete();
        return redirect()->back()->with('delete', 'تم حذف القسم بنجاح');
    }
}
