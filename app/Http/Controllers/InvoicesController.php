<?php

namespace App\Http\Controllers;

use App\Exports\InvoicesExport;
use App\Models\invoice_attachments;
use App\Models\Invoices;
use App\Models\invoices_details;
use App\Models\products;
use App\Models\Sections;
use App\Models\User;
use App\Notifications\AddInvoices;
use App\Notifications\Add_invoice_database;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Notification;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Facades\Excel;


class InvoicesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $invoices = Invoices::all();
        return view('invoices.invoices', compact('invoices'));
    }

    /**
     * Show the form for creating a new resource.
     *
     */
    public function create()
    {
        $sections = Sections::all();
        return view('invoices.add_invoice', compact('sections'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        Invoices::create([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'Status' => 'غير مدفوعة',
            'Value_Status' => 2,
            'note' => $request->note,
        ]);

        $invoice_id = Invoices::latest()->first()->id;

        invoices_details::create([
            'invoice_id' => $invoice_id,
            'invoice_number' => $request->invoice_number,
            'product' => $request->product,
            'section' => $request->Section,
            'status' => 'غير مدفوعة',
            'value_Status' => 2,
            'note' => $request->note,
            'user' => (Auth::user()->name),
        ]);

        if ($request->hasFile('pic')) {

            $invoice_id = Invoices::latest()->first()->id;

            //this is the file that will be uploaded
            $file = $request->file('pic');
            //this is the file name that will be used
            $file_name = $file->getClientOriginalName();

            $invoice_number = $request->invoice_number;
            $attachment = new invoice_attachments();
            $attachment->file_name = $file_name;
            $attachment->invoice_number = $invoice_number;
            $attachment->Created_by = Auth::user()->name;
            $attachment->invoice_id = $invoice_id;
            $attachment->save();

            // Move the file to the desired directory
            $file->move(public_path('Attachments/' . $invoice_number), $file_name);
        }

        //********************* this for send notification to user using mail ***************/
        // Retrieve the currently authenticated user
        // $user = Auth::user();
        // Send the notification to the authenticated user
        // Notification::send($user, new AddInvoices($invoice_id));

        //********************* this for send notification to user using database *************/

        // to save notification in database specially in user "owner"
        $user = User::find(1);

        // OR save notification in database for all users
        // $user = User::get();
        $invoices = Invoices::latest()->first();

        Notification::send($user, new Add_invoice_database($invoices));

        return redirect()->back()->with('Add', 'تم اضافة الفاتورة بنجاح');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $invoices = Invoices::where('id', $id)->first();
        return view('invoices.status_update', compact('invoices'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        //
        $invoices = Invoices::where('id', $id)->first();
        $sections = Sections::all();
        return view('invoices.edit_invoice', compact('invoices', 'sections'));
    }

    /**
     * Update the specified resource in storage
     */
    public function update(Request $request)
    {
        Invoices::findOrFail($request->invoice_id)->update([
            'invoice_number' => $request->invoice_number,
            'invoice_Date' => $request->invoice_Date,
            'Due_date' => $request->Due_date,
            'product' => $request->product,
            'section_id' => $request->Section,
            'Amount_collection' => $request->Amount_collection,
            'Amount_Commission' => $request->Amount_Commission,
            'Discount' => $request->Discount,
            'Value_VAT' => $request->Value_VAT,
            'Rate_VAT' => $request->Rate_VAT,
            'Total' => $request->Total,
            'note' => $request->note,
        ]);
        return redirect()->back()->with('edit', 'تم تعديل الفاتورة بنجاح');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Request $request)
    {
        $invoices = Invoices::where('id', $request->invoice_id)->first();
        $attachment = invoice_attachments::where('invoice_id', $request->invoice_id)->first();
        $id_page = $request->id_page;

        if (!$id_page == 2) {

            if (!empty($attachment->invoice_number)) {
                Storage::disk('public_uploads')->deleteDirectory($attachment->invoice_number);
                // Storage::disk('public_uploads')->delete($attachment->invoice_number . '/' . $attachment->file_name);
            }

            $invoices->forceDelete();
            session()->flash('delete_invoice');
            return redirect('/invoices');
        } else {
            $invoices->delete();
            session()->flash('archive_invoice');
            return redirect('/Archive');
        }
    }

    //obtaining product information associated with a particular section and delivering it in a JSON format
    public function getProducts($id)
    {
        // Fetch products from the database where the 'section_id' matches the provided $id.
        // The pluck method is used to select specific columns ('product_name' and 'id') from the database table.
        // The result is an associative array where product IDs serve as keys, and product names as values.

        $products = products::where('section_id', $id)->pluck('product_name', 'id');

        // Convert the product data into a JSON-encoded string and return it.
        return json_encode($products);
    }

    public function Status_Update($id, Request $request)
    {
        $invoices = Invoices::findOrFail($id);

        if ($request->Status === 'مدفوعة') {

            $invoices->update([
                'Value_Status' => 1,
                'Status' => $request->Status,
                'payment_date' => $request->payment_date,
            ]);

            invoices_details::create([
                'invoice_id' => $request->invoice_id,
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'section' => $request->Section,
                'status' => $request->Status,
                'value_Status' => 1,
                'note' => $request->note,
                'payment_date' => $request->payment_date,
                'user' => (Auth::user()->name),
            ]);
        } else {

            $invoices->update([
                'Value_Status' => 3,
                'Status' => $request->Status,
                'payment_date' => $request->payment_date,
            ]);
            invoices_details::create([
                'invoice_id' => $request->invoice_id,
                'invoice_number' => $request->invoice_number,
                'product' => $request->product,
                'section' => $request->Section,
                'status' => $request->Status,
                'value_Status' => 3,
                'note' => $request->note,
                'payment_date' => $request->payment_date,
                'user' => (Auth::user()->name),
            ]);
        }
        session()->flash('Status_Update');
        return redirect('/invoices');
    }

    public function Invoice_Paid()
    {
        $invoices = Invoices::where('Value_Status', 1)->get();
        return view('invoices.invoices_paid', compact('invoices'));
    }

    public function Invoice_unPaid()
    {
        $invoices = Invoices::where('Value_Status', 2)->get();
        return view('invoices.invoices_unpaid', compact('invoices'));
    }

    public function Invoice_Partial()
    {
        $invoices = Invoices::where('Value_Status', 3)->get();
        return view('invoices.invoices_Partial', compact('invoices'));
    }

    /**
     *  when you access a URL like Print_invoice/123,
     *  Laravel will automatically pass the 123 as the $id parameter to your Print_invoice method,
     *  and you can retrieve the corresponding invoice from the database using invoices::find($id)
     */

    // public function Print_invoice($id)
    // {

    //     $invoices = invoices::where('id', $id)->first();

    // or

    //     $invoice = invoices::findOrFail($id);

    // return view('invoices.Print_invoice', compact('invoices'));

    // }

    // or

    public function Print_invoice(Invoices $invoices)
    {
        return view('invoices.Print_invoice', compact('invoices'));
    }

    public function export()
    {
        return Excel::download(new InvoicesExport, 'قائمة الفواتير.xlsx');
    }
}
