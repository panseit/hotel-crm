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
            $table->foreign('room_category')->references('category_id')->on('room_categories');
        });
        Schema::table('prices', function (Blueprint $table) {
            $table->foreign('room_category_id')->references('category_id')->on('room_categories');
        });
        Schema::table('customers', function (Blueprint $table) {
            $table->foreign('customer_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
