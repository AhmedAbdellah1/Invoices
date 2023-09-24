<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sections extends Model
{
    use HasFactory;
    protected $fillable = ['section_name', 'section_description', 'created_by'];

    public function products()
    {
        return $this->hasMany(Products::class);
        //return $this->hasMany(Products::class, 'section_id', 'id');
    }
    
}
