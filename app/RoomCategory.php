<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoomCategory extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'room_categories';

    public $timestamps = false;

    protected $primaryKey = 'category_id';
}
