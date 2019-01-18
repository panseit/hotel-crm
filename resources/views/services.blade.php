@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Services</div>

                <div class="card-body">
                <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Reservation number</th>
                                <th scope="col">Start date</th>
                                <th scope="col">End date</th>
                                <th scope="col">Adults</th>
                                <th scope="col">Children</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($services as $service)
                                <tr>
                                    <th scope="row">{{ $service->service_id }}</th>
                                    <td>{{ $service->category->reservation_id }}</td>
                                    <td>{{ $service->check_in_date }}</td>
                                    <td>{{ $service->check_out_date }}</td>
                                    <td>{{ $service->max_adults }}</td>
                                    <td>{{ $service->max_children }}</td>
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
