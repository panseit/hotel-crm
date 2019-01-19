<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class QueriesController extends Controller
{
    /**
     * Select all customers with reservations
     */
    public function index() 
    {
        $users = DB::select('
            SELECT *
            FROM customers AS c 
            JOIN reservations AS r ON c.customer_id=r.customer_id
        ');
        return $users;
    }

    /**
     * Select all invoices for specific customer
     */
    public function query1()
    {
        $invoices = DB::select('
            SELECT *
            FROM invoices
            WHERE customer_id=9
        ');
        return $invoices;
    }

    /**
     * Create invoice for a reservation
     */
    public function query2()
    {
        $rID = 100;
        DB::beginTransaction();
        // check if invoice for reservation already exists
        $invoicesNum = DB::select('
            SELECT COUNT(invoice_id) AS num
            FROM invoices
            WHERE reservation_id='. $rID .'
        ')[0]->num;
        // if invoice doesn't exist, create it
        // calculate total costs
        // create invoice
        if ($invoicesNum=0) {
            DB::insert('
                INSERT INTO invoices
                (
                    reservation_id, customer_id, type, invoice_desc, 
                    vat, discount, amount, tax_registration_number, payment_method, 
                    created_at, updated_at
                ) 
                VALUES 
                (
                    '. $rID .', 36, \'Pro forma invoice\', 
                    \'Deleniti sit nisi minus autem dolor adipisci maxime perspiciatis.\', 24, 18, 
                    591.45, \'A12345\', \'other\', NULL, NULL
                )
            ');
        }
        $invoices = DB::select('
            SELECT * 
            FROM invoices
            WHERE reservation_id='. $rID .'
        ');
        DB::commit();
        return $invoices;
    }

    /**
     * Update a reservation
     * TRANSACTION TESTING ONLY
     */
    public function query3()
    {
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

    /**
     * Select num of adults 
     * (for transaction testing purposes, see query3 as well)
     */
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

    /**
     * Create new reservation
     */
    public function query5($customer_id, $category)
    {
        DB::beginTransaction();
        // find empty rooms
        $emptyRooms = $this->query6($category);
        
        $checkInDate = '2019-02-11 20:36:01';
        $checkOutDate = '2019-02-20 20:36:01';
        $customer_id=34;

        // reserve room
        DB::update('
            UPDATE rooms
            SET check_in_date=?, check_out_date=?
            WHERE room_number=?
        ', [$checkInDate, $checkOutDate, $emptyRooms[0]->room_number]);

        // create reservation and retrieve ID
        DB::insert('
            INSERT INTO reservations
            (room_category_id, customer_id, start_date, end_date, num_adults, num_children) 
            VALUES (?, ?, ?, ?, ?, ?)
        ', [$emptyRooms[0]->room_category_id, $customer_id, $checkInDate, $checkOutDate, 2, 2]);
        $rID = DB::getPdo()->lastInsertId();

        // Retrieve created reservation
        $reservation = DB::select('
            SELECT *
            FROM reservations
            WHERE reservation_id='. $rID .'
        ');
        DB::commit();
        return $reservation;
    }

    /**
     * Search for empty rooms, based on room category
     * @param Integer $roomCategory 
     */
    public function query6($roomCategory)
    {
        $emptyRooms = DB::select('
            SELECT room_number, room_category_id
            FROM rooms
            WHERE room_category_id='. $roomCategory .'
            AND check_in_date<NOW()
            AND check_out_date<NOW()
        ');
        return $emptyRooms;
    }

    /**
     * Search for empty rooms, based on room capacity
     * @param Integer $adults
     * @param Integer $children
     */
    public function query7($adults, $children)
    {
        $emptyRooms = DB::select('
            SELECT room_number, room_category_id
            FROM rooms
            WHERE max_adults>='. $adults .' 
            AND max_children>='. $children .'
            AND check_in_date<NOW()
            AND check_out_date<NOW()
        ');
        return $emptyRooms;
    }
}
