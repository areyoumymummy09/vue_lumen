<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
     /**
     
     *
     * @var array
     */
    
    protected $fillable = ['name','poster','created_at','updated_at'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
