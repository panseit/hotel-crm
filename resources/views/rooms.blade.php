@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Rooms</div>

                <div class="card-body">
                <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Room category</th>
                                <th scope="col">Start date</th>
                                <th scope="col">End date</th>
                                <th scope="col">Adults</th>
                                <th scope="col">Children</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($rooms as $room)
                                <tr>
                                    <th scope="row">{{ $room->room_number }}</th>
                                    <td>{{ App\RoomCategory::where('category_id', $room->room_category_id)->get()->first()->room_name }}</td>
                                    <td>{{ $room->check_in_date }}</td>
                                    <td>{{ $room->check_out_date }}</td>
                                    <td>{{ $room->max_adults }}</td>
                                    <td>{{ $room->max_children }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Room Categories</div>

                <div class="card-body">
                <table class="table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Category</th>
                                <th scope="col">Description</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($roomCategories as $roomCategory)
                                <tr>
                                    <th scope="row">{{ $roomCategory->category_id }}</th>
                                    <td>{{ $roomCategory->room_name }}</td>
                                    <td>{{ $roomCategory->category_desc }}</td>
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
