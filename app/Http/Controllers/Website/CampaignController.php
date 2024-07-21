<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use App\Models\Donation;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CampaignController extends Controller
{
    public function campaignDetail($id)
    {
        $campaign = Campaign::where("id", $id)->first();
        $campaign->campaignGallery = json_decode($campaign->campaignGallery);
        $campaign->campaignCategory = CampaignCategory::select("id", "name", "nameKh")->where("id", $campaign->campaignCategoryId)->first();
        $campaign->createdAt = Carbon::parse($campaign->created_at)->format('F jS, Y');
        $startDate = Carbon::parse($campaign->startDate);
        $endDate = Carbon::parse($campaign->endDate);
        $countDay = $startDate->diffInDays(Carbon::now());
        $totalDay = $startDate->diffInDays($endDate);
        $campaign->daysLeft = $totalDay - $countDay;
        $user = User::select("id", "name", "image", "joinAt")->where("id", $campaign->creatorId)->first();
        $user->joinAt = Carbon::parse($user->joinAt)->format('F jS, Y');
        $campaign->creator = $user;
        return response()->json($campaign);
    }

    public function getAllDonorByCampaign($campaignId)
    {
        $donations = Donation::where("campaignId", $campaignId)->orderBy("created_at", "DESC")->get();
        $donations->each(function ($donation) {
            $donation->donor =  User::select("id", "name", "image")->where("id", $donation->donorId)->first();
            $donation->dayPass = Carbon::parse($donation->donationDate)->diffForHumans();
        });

        return response()->json($donations);
    }

    public function homeCampaign()
    {
        $inNeedCampaign = Campaign::select("id", "campaignTile", "involvement", "goal", "totalRaised", "campaignGallery")->where("isInNeed", true)->where("status", "COMPLETE")->orderBy("id", "ASC")->first();
        $inNeedCampaign->campaignGallery = json_decode($inNeedCampaign->campaignGallery);
        $isLatest = Campaign::where("isLatest", true)->where("status", "COMPLETE")->orderBy("created_at", "DESC")->limit(9)->get();
        $isLatest->each(function ($query) {
            $query->campaignGallery = json_decode($query->campaignGallery);
            $query->campaignCategory = CampaignCategory::select("id", "name", "nameKh")->where("id", $query->campaignCategoryId)->first();
            $query->createdAt = Carbon::parse($query->created_at)->format('F jS, Y');
            $startDate = Carbon::parse($query->startDate);
            $endDate = Carbon::parse($query->endDate);

            $countDay = $startDate->diffInDays(Carbon::now());
            $totalDay = $startDate->diffInDays($endDate);
            $query->daysLeft = $totalDay - $countDay;
        });

        return response()->json([
            "inNeedCampaign" => $inNeedCampaign,
            "latestCampaign" => $isLatest
        ]);
    }

    public function projectCampaign(Request $request)
    {
        $location = $request->location;
        $organization = $request->organization;
        $category = $request->category;
        $orderBy = request("sortBy", "");

        $campaignList = Campaign::where("status", "COMPLETE")->when($location, function ($query) use ($location) {
            $query->where("city", "like", "%" . $location . "%");
        })->when($organization, function ($query) use ($organization) {
            $query->where("creatorId", $organization);
        })->when($category, function ($query) use ($category) {
            $query->whereIn("campaignCategoryId", explode(",", $category));
        })->orderBy("created_at", "DESC")->get();

        if ($orderBy == "ending") {
            $campaignList = Campaign::where("status", "COMPLETE")->when($location, function ($query) use ($location) {
                $query->where("city", "like", "%" . $location . "%");
            })->when($organization, function ($query) use ($organization) {
                $query->where("creatorId", $organization);
            })->when($category, function ($query) use ($category) {
                $query->whereIn("campaignCategoryId", explode(",", $category));
            })->orderBy("created_at", "ASC")->get();
        }

        if ($orderBy == "trending") {
            $campaignList = Campaign::where("status", "COMPLETE")->when($location, function ($query) use ($location) {
                $query->where("city", "like", "%" . $location . "%");
            })->when($organization, function ($query) use ($organization) {
                $query->where("creatorId", $organization);
            })->when($category, function ($query) use ($category) {
                $query->whereIn("campaignCategoryId", explode(",", $category));
            })->orderBy("isTrending", "DESC")->orderBy("created_at", "DESC")->get();
        }

        $campaignList->each(function ($query) {
            $query->campaignGallery = json_decode($query->campaignGallery);
            $query->campaignCategory = CampaignCategory::select("id", "name", "nameKh")->where("id", $query->campaignCategoryId)->first();
            $query->createdAt = Carbon::parse($query->created_at)->format('F jS, Y');
            $startDate = Carbon::parse($query->startDate);
            $endDate = Carbon::parse($query->endDate);

            $countDay = $startDate->diffInDays(Carbon::now());
            $totalDay = $startDate->diffInDays($endDate);
            $query->daysLeft = $totalDay - $countDay;
        });

        return response()->json([
            "campaignList" => $campaignList
        ]);
    }

    public function dropdown()
    {
        $organizations = User::select("id", "name", "image")->where("memberType", "Organization")->orderBy("created_at", "DESC")->get();
        $location = Campaign::select("city")->distinct()->get();
        return response()->json([
            "organizations" => $organizations,
            "location" => $location
        ]);
    }
}
