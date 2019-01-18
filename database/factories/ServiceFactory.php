<?php

use Faker\Generator as Faker;

$factory->define(App\Service::class, function (Faker $faker) {
    return [
        'service_id' => $faker->randomDigitNotNull,
        'reservation_id' => factory(App\Reservation::class, 1)->create()->first()->category_id,
        'service_name' => $faker->randomElement(['Basic', 'Luxury']),
        'service_type' => $faker->randomElement(['Room Service', 'Cinema', 'Spa', 'Gym']),
        'service_desc' => $faker->sentence,
        'service_price' => $faker->randomFloat(2, 10.00, 400.00)
    ];
});
