<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gallery extends Model
{
    protected $table = 'gallery';

    protected $primaryKey = 'id';

    protected $guarded = [];


    public function files()
    {
        return $this->morphMany(File::class, 'fileable');
    }


    public function createdBy()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

}
