<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QueriesController extends Controller
{
    public function index() 
    {
        $users = DB::select('
            SELECT *
            FROM customers AS c JOIN reservations AS r ON c.customer_id=r.customer_id
        ');
        return $users;
    }

    public function query1()
    {
        $invoices = DB::select('
            SELECT *
            FROM invoices
            WHERE customer_id=9
        ');
        return $invoices;
    }

    public function query2()
    {
        // TODO: Create invoice
        DB::beginTransaction();
        $invoices = DB::insert('
            INSERT INTO invoices
            () VALUES 
            ()
        ');
        DB::commit();
        return $invoices;
    }

    public function query3()
    {
        // TODO: Update reservation
        DB::beginTransaction();
        sleep(20); // Sleep to illustrate transaction lockage
        DB::update('
            UPDATE reservations
            SET num_adults=3
            WHERE reservation_id=4;
        ');
        $reservation = DB::select('
            SELECT reservation_id, num_adults
            FROM reservations
            WHERE reservation_id=4;
        ');
        DB::commit();
        return $reservation;
    }

    public function query4()
    {
        // Won't execute until query3 transaction is commited
        $reservation = DB::select('
            SELECT reservation_id, num_adults
            FROM reservations
            WHERE reservation_id=4;
        ');
        return $reservation;
    }
}
