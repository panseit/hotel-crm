<?php

use Faker\Generator as Faker;

$factory->define(App\Price::class, function (Faker $faker) {
    return [
        'room_category_id' => factory(App\RoomCategory::class, 1)->create()->first()->category_id,
        'season' => $faker->word,
        'value' => $faker->randomFloat(2, 10.00, 1000.00)
    ];
});
