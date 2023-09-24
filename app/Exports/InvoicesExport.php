<?php

namespace App\Exports;

use App\Models\Invoices;
use Maatwebsite\Excel\Concerns\FromCollection;

class InvoicesExport implements FromCollection
{
    /**
     * @return \Illuminate\Support\Collection
     */
    public function collection()
    {
        return Invoices::all();
        // or
        // return invoices::select('invoice_number', 'invoice_Date', 'Due_date', 'section_id', 'product', 'Amount_collection', 'Amount_Commission', 'Rate_VAT', 'Value_VAT', 'Total', 'Status', 'Payment_Date', 'note')->get();
    }
}
