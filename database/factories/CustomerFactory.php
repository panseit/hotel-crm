<?php

use Faker\Generator as Faker;

$factory->define(App\Customer::class, function (Faker $faker) {
    return [
        'first_name' => $faker->firstName,
        'last_name' => $faker->lastName,
        'middle_name' => $faker->name,
        'country' => $faker->country,
        'county' => $faker->state,
        'address_line1' => $faker->address,
        'address_line2' => $faker->secondaryAddress,
        'zip_num' => $faker->postcode,
        'date_of_birth' => $faker->date,
        'phone_number' => $faker->e164PhoneNumber
    ];
});
