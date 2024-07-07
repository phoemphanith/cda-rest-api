<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "titleKh",
        "subtitle",
        "subtitleKh",
        "description",
        "descriptionKh",
        "linkLabel",
        "linkLabelKh",
        "linkTo",
        "redirectNewTap",
        "image",
        "ordering",
        "isActive",
    ];
}
