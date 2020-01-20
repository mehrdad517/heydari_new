<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kalnoy\Nestedset\NodeTrait;

class Hyperlink extends Model
{
    use NodeTrait;

    protected $primaryKey = 'value';

    protected $table = 'menu_hyperlink';

    protected $fillable=['label'];

    protected $hidden = ['pivot'];



}
