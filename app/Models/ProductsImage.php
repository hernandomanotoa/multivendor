<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ProductsImage extends Model
{
    use HasFactory;
    // Every 'productsImage' belongs to a 'product'
    public function product() {
        return $this->belongsTo('App\Models\Product', 'product_id'); // 'section_id' is the foreign key
    }
}