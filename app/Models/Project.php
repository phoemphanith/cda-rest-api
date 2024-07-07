<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
    protected $fillable = [
        "title",
        "content",
        "image",
        "category_id",
        "client",
        "fromDate",
        "toDate",
        "location",
        "websiteLink",
        "facebookLink",
        "instagramLink",
        "telegramLink",
        "inProgress",
        "isDisplayHomepage",
        "ordering",
        "isActive",
    ];

    public function category()
    {
        return $this->belongsTo(ProjectCategory::class, "category_id", "id");
    }
}
