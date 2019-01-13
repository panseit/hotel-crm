<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('invoices', function (Blueprint $table) {
            $table->integer('invoice_id');
            $table->primary('invoice_id');
            $table->integer('reservation_id');
            $table->integer('customer_id');
            // timologio i apodeiksi
            $table->string('type')->nullable();
            $table->string('invoice_desc')->nullable();
            $table->integer('vat');
            $table->integer('discount');
            $table->double('amount', 8, 2);
            $table->string('tax_registration_number');
            $table->enum('payment_method', ['cash', 'credit_card', 'other']);
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
        Schema::dropIfExists('invoices');
    }
}
