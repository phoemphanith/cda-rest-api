<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Campaign extends Model
{
    use HasFactory;
    protected $fillable = [
        "creatorId",
        "campaignCategoryId",
        "location",
        "city",
        "campaignTile",
        "campaignTileKm",
        "fullStory",
        "fullStoryKm",
        "additionalInformation",
        "additionalInformationKm",
        "involvement",
        "involvementKm",
        "referenceLink",
        "goal",
        "startDate",
        "endDate",
        "gratitude",
        "gratitudeKm",
        "campaignFor",
        "phoneNumber",
        "fullName",
        "documentType",
        "identityNumber",
        "creatorLocation",
        "creatorCity",
        "receiveByBank",
        "accountName",
        "accountNumber",
        "videoLink",
        "campaignGallery",
        "videoFile",
        "idCardBack",
        "idCardFront",
        "passport",
        "profile",
        "status",
        "ordering",
        "isActive",
        "isInNeed",
        "isTrending",
        "isLatest"
    ];
}
