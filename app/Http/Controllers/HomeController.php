<?php

namespace App\Http\Controllers;

use App\Models\Invoices;
use Illuminate\Contracts\Session\Session;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */

    public function index()
    {
        // Calculate counts for different invoice statuses
        $countAll = Invoices::count();
        $countInvoices1 = invoices::where('Value_Status', 1)->count();
        $countInvoices2 = invoices::where('Value_Status', 2)->count();
        $countInvoices3 = invoices::where('Value_Status', 3)->count();

        // Calculate percentages (avoid division by zero)
        // حساب النسب المئوية (تجنب القسمة على صفر)

        $nspainvoices1 = ($countAll > 0) ? round($countInvoices1 / $countAll * 100) : 0;
        $nspainvoices2 = ($countAll > 0) ? round($countInvoices2 / $countAll * 100) : 0;
        $nspainvoices3 = ($countAll > 0) ? round($countInvoices3 / $countAll * 100) : 0;

        // Create the bar chart
        $barChart = app()->chartjs
            ->name('barChartTest')
            ->type('bar')
            ->size(['width' => 350, 'height' => 200])
            ->labels([__('messages.الفواتير المدفوعة'), __('messages.الفواتير الغير مدفوعة'), __('messages.الفواتير المدفوعة جزئيا')])
            ->datasets([

                [
                    "label" => __('messages.الفواتير المدفوعة'),
                    'backgroundColor' => ['#1AAC7C'],
                    'data' => [$nspainvoices1]
                ],
                [
                    "label" => __('messages.الفواتير الغير مدفوعة'),
                    'backgroundColor' => ['#F95570'],
                    'data' => [$nspainvoices2]
                ],
                [
                    "label" => __('messages.الفواتير المدفوعة جزئيا'),
                    'backgroundColor' => ['#F67133'],
                    'data' => [$nspainvoices3]
                ],
            ])
            ->options([
                'tooltips' => [
                    'enabled' => true,
                    'mode' => 'nearest',
                    'intersect' => false,
                ],
            ]);

        // Create the pie chart
        $pieChart = app()->chartjs
            ->name('pieChartTest')
            ->type('pie')
            ->size(['width' => 340, 'height' => 200])
            ->labels([__('messages.الفواتير الغير مدفوعة'), __('messages.الفواتير المدفوعة'), __('messages.الفواتير المدفوعة جزئيا')])
            ->datasets([
                [
                    'backgroundColor' => ['#ec5858', '#81b214', '#ff9642'],
                    'data' => [$nspainvoices2, $nspainvoices1, $nspainvoices3]
                ]
            ])
            ->options([]);

        return view('home', compact('barChart', 'pieChart'));
    }
}
