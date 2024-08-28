<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use App\Models\News;
use App\Models\Partner;
use App\Models\SiteSetting;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class HomepageController extends Controller
{
    public function slider(Request $request)
    {
        $lang = $request->header('Accept-Language');
        $sliders = Banner::where("isActive", true)->orderBy("ordering", "asc")->get();

        $sliders->each(function ($slider) use ($lang) {
            $slider->title = $lang == "KHM" ? ($slider->titleKh ? $slider->titleKh : $slider->title) : $slider->title;
            $slider->subtitle = $lang == "KHM" ? ($slider->subtitleKh ? $slider->subtitleKh : $slider->subtitle) : $slider->subtitle;
            $slider->description = $lang == "KHM" ? ($slider->descriptionKh ? $slider->descriptionKh : $slider->description) : $slider->description;
            $slider->linkLabel = $lang == "KHM" ? ($slider->linkLabelKh ? $slider->linkLabelKh : $slider->linkLabel) : $slider->linkLabel;
        });
        $sliders = $sliders->makeHidden(['titleKh', 'subtitleKh', 'descriptionKh', 'linkLabelKh']);

        return response()->json($sliders);
    }

    public function getCategories(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $categories = Cache::remember('campaign_categories', 120, function () {
            return CampaignCategory::select("id", "name", "nameKh", "desc", "descKh", "image", "thumbnail")->orderBy("ordering", "ASC")->where("isDisplayHomePage", true)->where("isActive", true)->get();
        });
        $categories->each(function($query) use ($lang) {
            $query->countProject = Campaign::where("status", "COMPLETE")->where("campaignCategoryId", $query->id)->count();
            $query->name = $lang == "KHM" ? ($query->nameKh ?: $query->name) : $query->name;
            $query->desc = $lang == "KHM" ? ($query->descKh ?: $query->desc) : $query->desc;
        });
        $categories->makeHidden(["nameKh", "descKh"]);
        return response()->json($categories);
    }

    public function homepage(Request $request)
    {
        $lang = $request->header('Accept-Language');
        $page = SiteSetting::where("type", "HOME_PAGE")->first();
        $content = json_decode($page->content);
        return response()->json([
            "latestProject" => $lang == "KHM" ? ($content->latestProjectKh ? $content->latestProjectKh : $content->latestProject) : $content->latestProject,
            "bannerDesc" => $lang == "KHM" ? ($content->bannerDescKh ? $content->bannerDescKh : $content->bannerDesc) : $content->bannerDesc,
            "bannerLabel" => $lang == "KHM" ? ($content->bannerLabelKh ? $content->bannerLabelKh : $content->bannerLabel) : $content->bannerLabel,
            "bannerLinkTo" => $content->bannerLinkTo ?: "",
            "thumbnail" => $content->thumbnail ?: "",
            "cardTitle1" => $lang == "KHM" ? ($content->cardTitleKh1 ? $content->cardTitleKh1 : $content->cardTitle1) : $content->cardTitle1,
            "cardDesc1" => $lang == "KHM" ? ($content->cardDescKh1 ? $content->cardDescKh1 : $content->cardDesc1) : $content->cardDesc1,
            "cardLabel1" => $lang == "KHM" ? ($content->cardLabelKh1 ? $content->cardLabelKh1 : $content->cardLabel1) : $content->cardLabel1,
            "cardIcon1" => $content->cardIcon1 ?: "",
            "cardLinkTo1" => $content->cardLinkTo1 ?: "",
            "cardIsShow1" => $content->cardIsShow1 ?: "",
            "thumbnailTwo" => $content->thumbnailTwo ?: "",
            "cardTitle2" => $lang == "KHM" ? ($content->cardTitleKh2 ? $content->cardTitleKh2 : $content->cardTitle2) : $content->cardTitle2,
            "cardDesc2" => $lang == "KHM" ? ($content->cardDescKh2 ? $content->cardDescKh2 : $content->cardDesc2) : $content->cardDesc2,
            "cardLabel2" => $lang == "KHM" ? ($content->cardLabelKh2 ? $content->cardLabelKh2 : $content->cardLabel2) : $content->cardLabel2,
            "cardIcon2" => $content->cardIcon2 ?: "",
            "cardLinkTo2" => $content->cardLinkTo2 ?: "",
            "cardIsShow2" => $content->cardIsShow2 ?: "",
            "thumbnailThree" => $content->thumbnailThree ?: "",
            "cardTitle3" => $lang == "KHM" ? ($content->cardTitleKh3 ? $content->cardTitleKh3 : $content->cardTitle3) : $content->cardTitle3,
            "cardDesc3" => $lang == "KHM" ? ($content->cardDescKh3 ? $content->cardDescKh3 : $content->cardDesc3) : $content->cardDesc3,
            "cardLabel3" => $lang == "KHM" ? ($content->cardLabelKh3 ? $content->cardLabelKh3 : $content->cardLabel3) : $content->cardLabel3,
            "cardIcon3" => $content->cardIcon3 ?: "",
            "cardLinkTo3" => $content->cardLinkTo3 ?: "",
            "cardIsShow3" => $content->cardIsShow3 ?: "",
            "thumbnailFour" => $content->thumbnailFour ?: "",
            "ourDonors" => $lang == "KHM" ? ($content->ourDonorsKh ? $content->ourDonorsKh : $content->ourDonors) : $content->ourDonors,
            "thumbnailFive" => $content->thumbnailFive ?: "",
            "getDailyUpdate" => $lang == "KHM" ? ($content->getDailyUpdateKh ? $content->getDailyUpdateKh : $content->getDailyUpdate) : $content->getDailyUpdate
        ]);
    }

    public function newsEvent(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $news = News::where("isActive", true)
            ->where("isDisplayHomepage", true)
            ->select("id", "title", "titleKh", "image", "summary", "summaryKh", "type")
            ->orderBy("ordering", "asc")
            ->first();
        $news->createdAt = Carbon::parse($news->created_at)->format('F jS, Y');
        $news->title = $lang == "KHM" ? ($news->titleKh ? $news->titleKh : $news->title) : $news->title;
        $news->summary = $lang == "KHM" ? ($news->summaryKh ? $news->summaryKh : $news->summary) : $news->summary;

        $newsList = News::where("isActive", true)
            ->where("isDisplayHomepage", true)
            ->where("id", "!=", $news->id)
            ->select("id", "title", "titleKh", "image", "summary", "summaryKh", "type")
            ->orderBy("ordering", "asc")
            ->get();

        $newsList->each(function ($query) use ($lang) {
            $query->createdAt = Carbon::parse($query->created_at)->format('F jS, Y');
            $query->title = $lang == "KHM" ? ($query->titleKh ? $query->titleKh : $query->title) : $query->title;
            $query->summary = $lang == "KHM" ? ($query->summaryKh ? $query->summaryKh : $query->summary) : $query->summary;
        });

        return response()->json([
            "news" => $news,
            "newsList" => $newsList
        ]);
    }

    public function partners()
    {
        $partner = Partner::where("isActive", true)->get();
        return response()->json($partner);
    }
}
