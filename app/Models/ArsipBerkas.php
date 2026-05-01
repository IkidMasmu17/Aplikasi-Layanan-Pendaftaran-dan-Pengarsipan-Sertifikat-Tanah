<?php

namespace App\Models;

use App\Models\Rak;
use App\Models\Permohonan;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class ArsipBerkas extends Model
{
    protected $guarded = ['id'];

    /**
     * Get the rak that owns the ArsipBerkas
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function rak(): BelongsTo
    {
        return $this->belongsTo(Rak::class);
    }

    public function permohonan(): BelongsTo
    {
        return $this->belongsTo(Permohonan::class);
    }

}
