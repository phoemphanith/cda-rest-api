<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CampaignCategory extends Model
{
    use HasFactory;
    protected $fillable = [
        "name",
        "nameKh",
        "desc",
        "descKh",
        "image",
        "thumbnail",
        "color",
        "isDisplayHomePage",
        "ordering",
        "isActive",
    ];
}
