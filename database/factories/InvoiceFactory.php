<?php

use Faker\Generator as Faker;

$factory->define(App\Invoice::class, function (Faker $faker) {
    return [
        'reservation_id' => factory(App\Reservation::class, 1)->create()->first()->reservation_id,
        'customer_id' => App\Customer::inRandomOrder()->get()->first()->customer_id,
        'type' =>  $faker->randomElement(['Credit memo', 'Pro forma invoice', 'Interim invoice']),
        'invoice_desc' => $faker->sentence,
        'vat' => $faker->numberBetween(17,24),
        'discount' => $faker->numberBetween(5,50),
        'amount' => $faker->randomFloat(2, 10.00, 1000.00),
        // 'tax_registration_number' => $faker->vat(false),
        'tax_registration_number' => "A12345",
        'payment_method' => $faker->randomElement(['cash', 'credit_card', 'other'])
    ];
});
