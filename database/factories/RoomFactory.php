<?php

use Faker\Generator as Faker;

$factory->define(App\Room::class, function (Faker $faker) {
    return [
        'room_number' => $faker->word,
        'room_category' => factory(App\RoomCategory::class, 1)->create()->first()->category_id,
        'max_adults' => $faker->numberBetween(1, 4),
        'max_children' => $faker->numberBetween(0, 2),
        'check_in_date' => $faker->dateTimeThisYear('+1 month'),
        'check_out_date' => strtotime('+1 Week', $startingDate->getTimestamp()),
        'is_empty' => $faker->boolean,
        'floor_no' => $faker->numberBetween(1, 5),
        'room_selling_point' => $faker->sentence
});