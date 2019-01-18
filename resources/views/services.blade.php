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
                                <th scope="col">Service Name</th>
                                <th scope="col">Service Type</th>
                                <th scope="col">Description</th>
                                <th scope="col">Price</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($services as $service)
                                <tr>
                                    <th scope="row">{{ $service->service_id }}</th>
                                    <td>{{ $service->reservation_id }}</td>
                                    <td>{{ $service->service_name }}</td>
                                    <td>{{ $service->service_type }}</td>
                                    <td>{{ $service->service_desc }}</td>
                                    <td>{{ $service->service_price }}</td>
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
