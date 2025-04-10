<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\Album;


class AlbumController extends Controller {
    /**
     * Create a new controller instance.
     *
     * @return void
     */

     public function getAll() {
        $albums = Album::select('id', 'name', 'poster', 'created_at', 'updated_at')
            ->orderBy('id', 'ASC')
            ->get();
    
        return response()->json($albums);
    }
    
}
