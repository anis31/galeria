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
}
