<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'rooms';

    /**
     * Get the category of room
     */
    public function category()
    {
        return $this->belongsTo('App\RoomCategory', 'room_category', 'category_id');
    }
}
