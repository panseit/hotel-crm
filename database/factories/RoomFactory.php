<?php

use Faker\Generator as Faker;

$factory->define(App\Room::class, function (Faker $faker) {
    $startingDate = $faker->dateTimeThisYear('+1 month');
    $dateTimeFormat = 'Y-m-d H:i:s';
    $endingDate = new \DateTime();
    $endingDate->setTimestamp(strtotime('+1 Week', $startingDate->getTimestamp()));
    return [
        'room_number' => $faker->unique()->word,
        'reservation_id' => App\Reservation::inRandomOrder()->get()->first()->reservation_id,
        'room_category_id' => App\RoomCategory::inRandomOrder()->get()->first()->category_id,
        'max_adults' => $faker->numberBetween(1, 4),
        'max_children' => $faker->numberBetween(0, 2),
        'check_in_date' => $startingDate,
        'check_out_date' => $endingDate->format($dateTimeFormat),
        'is_empty' => $faker->boolean,
        'floor_no' => $faker->numberBetween(1, 5),
        'room_selling_point' => $faker->sentence
    ];
});