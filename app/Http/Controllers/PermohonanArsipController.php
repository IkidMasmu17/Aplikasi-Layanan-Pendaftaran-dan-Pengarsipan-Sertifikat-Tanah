<?php

namespace App\Http\Controllers;

use App\Models\Permohonan;

class PermohonanArsipController extends Controller
{
    public function index()
    {
        $data = Permohonan::where('status', 5)->latest()->get();

        return view('arsip.permohonan.index', compact('data'));
    }

    public function show(Permohonan $permohonanArsip)
    {
        return view('arsip.permohonan.show', [
            'permohonan' => $permohonanArsip,
        ]);
    }
}
