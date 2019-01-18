@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Invoices</div>

                <div class="card-body">
                <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">invoice category</th>
                                <th scope="col">Start date</th>
                                <th scope="col">End date</th>
                                <th scope="col">Adults</th>
                                <th scope="col">Children</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($invoices as $invoice)
                                <tr>
                                    <th scope="row">{{ $invoice->invoice_number }}</th>
                                    <td>{{ $invoice->category->invoice_name }}</td>
                                    <td>{{ $invoice->check_in_date }}</td>
                                    <td>{{ $invoice->check_out_date }}</td>
                                    <td>{{ $invoice->max_adults }}</td>
                                    <td>{{ $invoice->max_children }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
