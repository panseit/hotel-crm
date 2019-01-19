<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRoomsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rooms', function (Blueprint $table) {
            $table->string('room_number');
            $table->primary('room_number');
            $table->integer('reservation_id')->unsigned();
            $table->integer('room_category_id')->unsigned();
            $table->integer('max_adults');
            $table->integer('max_children');
            $table->datetime('check_in_date');
            $table->datetime('check_out_date');
            $table->boolean('is_empty');
            $table->string('floor_no');
            $table->string('room_selling_point');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rooms');
    }
}
