<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Customers_Report;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InvoiceArchiveController;
use App\Http\Controllers\InvoiceAttachmentsController;
use App\Http\Controllers\Invoices_Report;
use App\Http\Controllers\InvoicesController;
use App\Http\Controllers\InvoicesDetailsController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SectionsController;
use App\Http\Controllers\UserController;
use App\Models\Invoices;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;


/*********************************************************************************************************************/

Route::get('/', function () {
    return view('auth.login');
});

/********************************************* AuthController ********************************************************/

Auth::routes();
// or
// Auth::routes(['register' => false]);
// Auth::routes(['register' => false, 'reset' => false, 'verify' => false']);


/************************************************ HomeController ****************************************************/

Route::get('/home', [HomeController::class, 'index'])->name('home');
// or
// Route::get('/home', [HomeController::class, 'index'])->name('home')->middleware('check_user_status');

/************************************************ٌRoute *************************************************/

Route::get('languageConverter/{locale}', function ($locale) {

    if (in_array($locale, ['ar', 'en'])) {
        session()->put('locale', $locale);
    }
    return redirect()->back();
})->name('languageConverter');

/************************************************ UserController *************************************************/

Route::get('/mark-as-read', [UserController::class, 'markAsRead'])->name('mark-as-read');

/************************************************ SectionsController *************************************************/

Route::resource('sections', SectionsController::class);

/************************************************ ProductsController *************************************************/

Route::resource('products', ProductsController::class);

/************************************************ InvoiceArchiveController *************************************************/

Route::resource('Archive', InvoiceArchiveController::class);

/************************************************ InvoiceAttachmentsController ***************************************/

Route::resource('InvoiceAttachments', InvoiceAttachmentsController::class);

/**************************************************** InvoicesController *********************************************/

Route::resource('invoices', InvoicesController::class);
Route::controller(InvoicesController::class)->group(function () {
    Route::get('/section/{id}', 'getProducts');
    Route::get('/edit_invoice/{id}', 'edit');
    Route::get('/Status_show/{id}', 'show')->name('Status_show');
    Route::post('/Status_Update/{id}', 'Status_Update')->name('Status_Update');
    Route::get('Invoice_Paid', 'Invoice_Paid');
    Route::get('Invoice_UnPaid', 'Invoice_UnPaid');
    Route::get('Invoice_Partial', 'Invoice_Partial');

    // Route::get('Print_invoice/{id}', 'Print_invoice');
    // or
    Route::get('Print_invoice/{invoices}', 'Print_invoice');
    Route::get('export_invoices', 'export');
});

/**************************************************** InvoicesDetailsController ***************************************/

Route::controller(InvoicesDetailsController::class)->group(function () {
    Route::get('/InvoicesDetails/{id}', 'show_details');
    Route::get('View_file/{invoice_number}/{file_name}', 'open_file');
    Route::get('download/{invoice_number}/{file_name}', 'download_file');
    Route::delete('delete_file', 'destroy')->name('delete_file');
});

/**************************************************** PermissionController **************************************************/

Route::group(['middleware' => ['auth']], function () {

    Route::resource('roles', RoleController::class);

    Route::resource('users', UserController::class);
});

/**************************************************** Invoices_Report **************************************************/

Route::get('invoices_report', [Invoices_Report::class, 'index']);
Route::post('Search_invoices', [Invoices_Report::class, 'Search_invoices']);

/**************************************************** Customers_Report **************************************************/

Route::get('customers_report', [Customers_Report::class, 'index'])->name("customers_report");
Route::post('Search_customers', [Customers_Report::class, 'Search_customers']);

/**************************************************** AdminController **************************************************/

Route::get('/{page}', [AdminController::class, 'index']);

/**********************************************************************************************************************/
