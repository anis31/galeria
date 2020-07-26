<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Album;
use File;

class AlbumController extends Controller
{
    public function index()
    {
        $no = 0;
        $album = Album::all();
        return view ('admin.album.index', compact('album', 'no'));
    }
    
    public function create()
    {
        return view('admin.album.create');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nama_album'=>'required',
            'gambar'=>'required|image|mimes:jpeg,jpg,png'
            ]);
        $album = New Album;
        $album->nama_album = $request->nama_album;
        $album->album_seo = Str::slug($request->nama_album);

        $gambar = $request->gambar;
        $namafile = time().'.'.$gambar->getClientOriginalExtension();
        $gambar->move('images/', $namafile);

        $album->gambar = $namafile;
        $album->save();
        return redirect('/album')->with('pesan', 'Data album berhasil disimpan');
    }

    public function destroy($id)
    {
        $album = Album::find($id);
        $namafile = $album->gambar;
        File::delete('/images'.$namafile);
        $album->delete();
        return redirect('/album')->with('pesan','Data album berhasil dihapus');
    }
}
