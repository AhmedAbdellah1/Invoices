<?php

namespace App\Http\Controllers;

use App\Models\invoice_attachments;
use App\Models\Invoices;
use App\Models\invoices_details;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class InvoicesDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
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
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(invoices_details $invoices_details)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(invoices_details $invoices_details)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, invoices_details $invoices_details)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        invoice_attachments::findOrFail($request->id_file)->delete();

        Storage::disk('public_uploads')->delete($request->invoice_number . '/' . $request->file_name);
        return redirect()->back()->with('delete', 'تم حذف المرفق بنجاح');
    }

    public function show_details($id)
    {
        // Retrieve the invoice record from the 'invoices' table where the 'id' matches the provided $id.
        $invoices = Invoices::where('id', $id)->first();
        // Retrieve all details associated with this invoice from the 'invoice_details' table where 'invoice_id' matches the provided $id.
        $details = invoices_details::where('invoice_id', $id)->get();
        // Retrieve all attachments associated with this invoice from the 'invoice_attachments' table where 'invoice_id' matches the provided $id.
        $attachments = invoice_attachments::where('invoice_id', $id)->get();
        // Load and return a view named 'invoices.details_invoice' and pass the retrieved data as variables to the view.
        return view('invoices.details_invoice', compact('invoices', 'details', 'attachments'));
    }

    public function open_file($invoice_number, $file_name)
    {
        // Define the full path of the file.
        $pathOfFile = public_path('Attachments/' . $invoice_number . '/' . $file_name);
        // Return the file
        return response()->file($pathOfFile);
    }

    public function download_file($invoice_number, $file_name)
    {
        // Define the full path of the file.
        $pathOfFile = public_path('Attachments/' . $invoice_number . '/' . $file_name);
        // Return the file
        return response()->download($pathOfFile);
    }
}
