<?php

use Illuminate\Database\Seeder;

class RoomCategoriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\RoomCategory::class, 50)->create();
    }
}
