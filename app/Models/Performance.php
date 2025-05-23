<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Performance extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "titleKh",
        "description",
        "descriptionKh",
        "image",
        "ordering",
        "isActive",
    ];
}
