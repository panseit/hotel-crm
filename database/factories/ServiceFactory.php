<?php

use Faker\Generator as Faker;

$factory->define(App\Service::class, function (Faker $faker) {
    return [
        'reservation_id' => App\Reservation::inRandomOrder()->get()->first()->reservation_id,
        'service_name' => $faker->randomElement(['Basic', 'Luxury']),
        'service_type' => $faker->randomElement(['Room Service', 'Cinema', 'Spa', 'Gym']),
        'service_desc' => $faker->sentence,
        'service_price' => $faker->randomFloat(2, 10.00, 400.00)
    ];
});
