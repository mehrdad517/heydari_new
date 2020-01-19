<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kalnoy\Nestedset\NodeTrait;

class Hyperlink extends Model
{
    use NodeTrait;

    protected $primaryKey = 'value';

    protected $table = 'footer_link';

    protected $fillable=['label'];

    protected $hidden = ['pivot'];



}
