<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DefineRelationships extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('rooms', function (Blueprint $table) {
            $table->foreign('room_category_id')->references('category_id')->on('room_categories')->onDelete('cascade');
        });
        Schema::table('prices', function (Blueprint $table) {
            $table->foreign('room_category_id')->references('category_id')->on('room_categories')->onDelete('cascade');
        });
        Schema::table('customers', function (Blueprint $table) {
            $table->foreign('customer_id')->references('id')->on('users')->onDelete('cascade');
        });
        // Reservation reserves room number
        Schema::table('reservations', function (Blueprint $table) {
            $table->foreign('room_category_id')->references('category_id')->on('room_categories')->onDelete('cascade');
        });
        Schema::table('services', function (Blueprint $table) {
            $table->foreign('reservation_id')->references('reservation_id')->on('reservations')->onDelete('cascade');
        });
        Schema::table('reservations', function (Blueprint $table) {
            $table->foreign('invoice_id')->references('invoice_id')->on('invoices')->onDelete('cascade');
        });
        Schema::table('reservations', function (Blueprint $table) {
            $table->foreign('customer_id')->references('customer_id')->on('customers')->onDelete('cascade');
        });
        Schema::table('invoices', function (Blueprint $table) {
            $table->foreign('customer_id')->references('customer_id')->on('customers')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
    }
}
