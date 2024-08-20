<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use App\Models\Donation;
use App\Models\User;
use App\Models\UserLike;
use App\Models\UserShare;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Exception;
use Illuminate\Support\Facades\Log;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class CampaignController extends Controller
{

    public function campaignDetail($id, Request $request)
    {
        $lang = $request->header('Accept-Language');
        $campaign = Campaign::where("id", $id)->first();
        $campaign->campaignTile = $lang == "KHM" ? ($campaign->campaignTileKm ? $campaign->campaignTileKm : $campaign->campaignTile) : $campaign->campaignTile;
        $campaign->fullStory = $lang == "KHM" ? ($campaign->fullStoryKm ? $campaign->fullStoryKm : $campaign->fullStory) : $campaign->fullStory;

        $campaign->campaignGallery = json_decode($campaign->campaignGallery);

        $category = CampaignCategory::select("id", "name", "nameKh")->where("id", $campaign->campaignCategoryId)->first();
        if ($category) {
            $category->name = $lang == "KHM" ? ($category->nameKh ? $category->nameKh : $category->name) : $category->name;
        }
        $campaign->campaignCategory = $category;

        $campaign->createdAt = Carbon::parse($campaign->created_at)->format('F jS, Y');
        $startDate = Carbon::parse($campaign->startDate);
        $endDate = Carbon::parse($campaign->endDate);
        $countDay = $startDate->diffInDays(Carbon::now());
        $totalDay = $startDate->diffInDays($endDate);
        $campaign->daysLeft = $totalDay - $countDay;

        $user = User::select("id", "name", "image", "joinAt")->where("id", $campaign->creatorId)->first();
        $user->joinAt = Carbon::parse($user->joinAt)->format('F jS, Y');
        $campaign->creator = $user;
        $campaign->shareCount = UserShare::where("campaignId", $id)->count();
        $campaign->likeCount = UserLike::where("campaignId", $id)->count();
        $campaign->makeHidden(["campaignTileKm", "fullStoryKm"]);
        return response()->json($campaign);
    }

    public function campaignDetailMeta($id)
    {
        $campaign = Campaign::select("campaignTile", "campaignGallery", "created_at", "id", "fullStory")->where("id", $id)->first();
        $campaign->campaignGallery = json_decode($campaign->campaignGallery);
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

    public function homeCampaign(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $inNeedCampaign = Campaign::select("id", "campaignTile", "campaignTileKm", "involvement", "involvementKm", "goal", "totalRaised", "campaignGallery")->where("isInNeed", true)->where("status", "COMPLETE")->orderBy("id", "ASC")->first();
        $inNeedCampaign->campaignGallery = json_decode($inNeedCampaign->campaignGallery);
        $inNeedCampaign->campaignTile = $inNeedCampaign->campaignTile = $lang == "KHM" ? ($inNeedCampaign->campaignTileKm ? $inNeedCampaign->campaignTileKm : $inNeedCampaign->campaignTile) : $inNeedCampaign->campaignTile;
        $inNeedCampaign->involvement = $inNeedCampaign->involvement = $lang == "KHM" ? ($inNeedCampaign->involvementKm ? $inNeedCampaign->involvementKm : $inNeedCampaign->involvement) : $inNeedCampaign->involvement;
        $inNeedCampaign->makeHidden(["campaignTileKm", "involvementKm"]);

        $isLatest = Campaign::where("isLatest", true)->where("status", "COMPLETE")->orderBy("created_at", "DESC")->limit(9)->get();
        $isLatest->each(function ($query) use ($lang) {
            $query->campaignTile = $query->campaignTile = $lang == "KHM" ? ($query->campaignTileKm ? $query->campaignTileKm : $query->campaignTile) : $query->campaignTile;
            $query->involvement = $query->involvement = $lang == "KHM" ? ($query->involvementKm ? $query->involvementKm : $query->involvement) : $query->involvement;
            $query->makeHidden(["campaignTileKm", "involvementKm"]);
            
            $query->campaignGallery = json_decode($query->campaignGallery);
            $category = CampaignCategory::select("id", "name", "nameKh")->where("id", $query->campaignCategoryId)->first();
            if ($category) {
                $category->name = $lang == "KHM" ? ($category->nameKh ? $category->nameKh : $category->name) : $category->name;
            }
            $query->campaignCategory = $category;
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
        $lang = $request->header("Accept-Language");
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

        $campaignList->each(function ($query) use ($lang) {
            $query->campaignTile = $query->campaignTile = $lang == "KHM" ? ($query->campaignTileKm ? $query->campaignTileKm : $query->campaignTile) : $query->campaignTile;
            $query->involvement = $query->involvement = $lang == "KHM" ? ($query->involvementKm ? $query->involvementKm : $query->involvement) : $query->involvement;
            $query->makeHidden(["campaignTileKm", "involvementKm"]);

            $query->campaignGallery = json_decode($query->campaignGallery);
            $category = CampaignCategory::select("id", "name", "nameKh")->where("id", $query->campaignCategoryId)->first();
            if ($category) {
                $category->name = $lang == "KHM" ? ($category->nameKh ? $category->nameKh : $category->name) : $category->name;
            }
            $query->campaignCategory = $category;

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

    public function projectCampaignIdPaths(Request $request)
    {
       
        $campaignList = Campaign::where("status", "COMPLETE")->select("id")->get();

        return response()->json([
            "campaignList" => $campaignList
        ]);
    }

    public function dropdown()
    {
        $organizations = User::select("id", "name", "image")->where("memberType", "ORGANIZATION")->orderBy("created_at", "DESC")->get();
        $location = Campaign::select("city")->distinct()->get();
        return response()->json([
            "organizations" => $organizations,
            "location" => $location
        ]);
    }

    public function userShareCampaign(Request $request)
    {
        $item = [
            "userId" => auth()->id(),
            "campaignId" => $request->campaignId,
            "shareWith" => $request->shareWith
        ];

        try {
            UserShare::create($item);
        } catch (Exception $err) {
            Log::info("[Save User Share]: " . $err);
            return response()->json([
                "message" => "Share Successfully!",
                "status" => "fail"
            ], 200);
        }

        return response()->json([
            "message" => "Share Successfully!",
            "status" => "success"
        ], 200);
    }

    public function userLikeCampaign(Request $request)
    {
        $item = [
            "userId" => auth()->id(),
            "campaignId" => $request->campaignId,
        ];

        try {
            if ($request->isLike == true) {
                UserLike::create($item);
            } else {
                $userLike = UserLike::where([["userId", auth()->id()], ["campaignId", $request->campaignId]])->first();
                $userLike->delete();
            }
        } catch (Exception $err) {
            Log::info("[Save User Share]: " . $err);
            return response()->json([
                "message" => "Share Failed!",
                "status" => "fail"
            ], 200);
        }

        return response()->json([
            "message" => "Share Successfully!",
            "status" => "success"
        ], 200);
    }

    public function userIsLikeCampaign(Request $request)
    {
        $userLike = UserLike::where([["userId", $request->userId], ["campaignId", $request->campaignId]])->first();
        if ($userLike) {
            return response()->json(1);
        }

        return response()->json(2);
    }

    public function generateQRCode($campaignId, Request $req)
    {
        $campaign = Campaign::find($campaignId);

        if (!$campaign->qrCode) {
            $campaign->qrCode = "/qrcode/" . time() . "_qr_code.svg";

            QrCode::format('svg')->generate(
                $req->url,
                public_path('uploads/' . "/qrcode/" . time() . "_qr_code.svg")
            );

            $campaign->save();
        }

        return response()->json([
            "message" => "Generate Successfully!",
            "qrCode" => $campaign->qrCode,
            "status" => "success"
        ], 200);
    }

    public function viewSvgFile(Request $request)
    {
        $qrcode = $request->qrcode;
        return response()->file(public_path("uploads$qrcode"));
    }

    public function userComment(Request $request)
    {
        $item = [
            "userId" => auth()->id(),
            "campaignId" => $request->campaignId,
            "comment" => $request->comment
        ];
    }
}
