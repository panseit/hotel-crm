<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        // Ask for db migration refresh, default is no
        if ($this->command->confirm('Do you wish to refresh migration before seeding, it will clear all old data ?')) 
        {
            // Call the php artisan migrate:fresh using Artisan
            $this->command->call('migrate:fresh');

            $this->command->line("Database cleared.");
        }

        $this->call([
            UsersTableSeeder::class,
            CustomersTableSeeder::class,
            RoomCategoriesTableSeeder::class,
            ReservationsTableSeeder::class,
            InvoicesTableSeeder::class,
            ServicesTableSeeder::class,
            RoomsTableSeeder::class,
            PricesTableSeeder::class
        ]);



        $this->command->info("Database seeded.");
    }
}
