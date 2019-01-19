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
                                <th scope="col">reservation id</th>
                                <th scope="col">customer id</th>
                                <th scope="col">Invoice Type</th>
                                <th scope="col">Amount</th>
                                <th scope="col">Payment Method</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($invoices as $invoice)
                                <tr>
                                    <th scope="row">{{ $invoice->invoice_id }}</th>
                                    <td>{{ $invoice->reservation_id }}</td>
                                    <td>{{ $invoice->customer_id }}</td>
                                    <td>{{ $invoice->type }}</td>
                                    <td>{{ $invoice->amount }}</td>
                                    <td>{{ $invoice->payment_method }}</td>
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
