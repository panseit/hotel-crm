<?php

use Faker\Generator as Faker;

$factory->define(App\Reservation::class, function (Faker $faker) {
    $startingDate = $faker->dateTimeThisYear('+1 month');
    $dateTimeFormat = 'Y-m-d H:i:s';
    $endingDate = new \DateTime();
    $endingDate->setTimestamp(strtotime('+1 Week', $startingDate->getTimestamp()));
    return [
        'room_category_id' => App\RoomCategory::inRandomOrder()->get()->first()->category_id,
        'customer_id' => App\Customer::first()->customer_id,
        'start_date' => $startingDate,
        'end_date' => $endingDate->format($dateTimeFormat),
        'num_adults' => $faker->randomDigit,
        'num_children' => $faker->randomDigit
    ];
});
