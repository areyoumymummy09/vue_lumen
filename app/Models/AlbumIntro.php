<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AlbumIntro extends Model
{
     /**
     
     *
     * @var array
     */
    
    protected $fillable = ['short_description','concert_image','album_id','created_at','updated_at'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
