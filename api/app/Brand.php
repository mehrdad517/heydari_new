<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    protected $table = 'brand';

    protected $guarded = [];

    public function product()
    {
        return $this->hasMany(Product::class);
    }

    public function files()
    {
        return $this->morphMany(File::class, 'fileable');
    }


}
