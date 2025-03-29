<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Team extends Model
{
    use HasFactory;
    protected $fillable = [
        "name",
        "nameKh",
        "position",
        "positionKh",
        "image",
        "desc",
        "descKh",
        "facebookLink",
        "instagramLink",
        "linkedinLink",
        "telegramLink",
        "ordering",
        "isActive",
    ];
}
