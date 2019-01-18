<?php

use Faker\Generator as Faker;

$factory->define(App\Reservation::class, function (Faker $faker) {
    return [
        'reservation_id' => $faker->randomDigitNotNull,
        'room_category_id' => factory(App\RoomCategory::class, 1)->create()->first()->category_id,
        'invoice_id' => factory(App\Invoice::class, 1)->create()->first()->invoice_id,
        'customer_id' => factory(App\Customer::class, 1)->create()->first()->customer_id,
        'start_date' => $faker->dateTimeThisYear('+1 month'),
        'end_date' => strtotime('+1 Week', $startingDate->getTimestamp()),
        'num_adults' => $faker->randomDigit,
        'num_children' => $faker->randomDigit
    ];
});
