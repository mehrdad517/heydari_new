<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kalnoy\Nestedset\NodeTrait;

class ProductCategory extends Model
{
    use NodeTrait;

    protected $primaryKey = 'value';

    protected $table = 'product_category';

    protected $guarded = [];

    public function attributes()
    {
        return $this->belongsToMany(GroupAttribute::class, 'group_attribute_category', 'category_id', 'attribute_id');
    }

    public function files()
    {
        return $this->morphMany(File::class, 'fileable');
    }


}
