<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\AlbumIntro;

class AlbumIntroController extends Controller {

    public function getAll() {
        $albums = AlbumIntro::select('id', 'short_description', 'concert_image', 'album_id')
            ->orderBy('created_at', 'asc') 
            ->get();

        return response()->json($albums);
    }

    public function getOne($id) {
        $albumIntro = \DB::table('album_intros')
            ->join('albums', 'album_intros.album_id', '=', 'albums.id')
            ->select(
                'album_intros.id',
                'album_intros.short_description',
                'album_intros.concert_image',
                'album_intros.album_id',
                'albums.name as album_name'
            )
            ->where('album_intros.id', $id)
            ->first();
    
        return response()->json($albumIntro);
    }
    

    public function save(Request $request) {
        $this->validate($request, [
            'short_description' => 'required',
            'album_id' => 'required|integer',
            'concert_image' => 'required'
        ]);

        $album = AlbumIntro::create($request->all());
        return response()->json($album, 201);
    }

    public function update(Request $request, $id) {
        $album = AlbumIntro::findOrFail($id);

        $this->validate($request, [
            'short_description' => 'required',
            'album_id' => 'required|integer',
            'concert_image' => 'required'
        ]);

        $album->update($request->all());
        return response()->json($album);
    }

    public function delete($id) {
        $album = AlbumIntro::findOrFail($id);
        $album->delete();

        return response()->json(null, 204);
    }
}
