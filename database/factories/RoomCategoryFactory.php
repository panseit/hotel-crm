<?php

use Faker\Generator as Faker;

$factory->define(App\RoomCategory::class, function (Faker $faker) {
    return [
        'room_name' => $faker->word,
        'category_desc' => $faker->sentence
    ];
});
