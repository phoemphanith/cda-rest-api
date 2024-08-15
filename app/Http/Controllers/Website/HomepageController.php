<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\Banner;
use App\Models\News;
use App\Models\Partner;
use App\Models\SiteSetting;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomepageController extends Controller
{
    public function slider()
    {
        $sliders = Banner::where("isActive", true)
            ->select("id", "title", "subtitle", "description", "linkLabel", "linkTo", "redirectNewTap", "image")
            ->orderBy("ordering", "asc")
            ->get();

        return response()->json($sliders);
    }

    public function homepage()
    {
        $page = SiteSetting::where("type", "HOME_PAGE")->first();
        $content = json_decode($page->content);
        return response()->json($content);
    }

    public function newsEvent()
    {
        $news = News::where("isActive", true)
            ->where("isDisplayHomepage", true)
            ->select("id", "title", "image", "summary", "type")
            ->orderBy("ordering", "asc")
            ->first();
        $news->createdAt = Carbon::parse($news->created_at)->format('F jS, Y');

        $newsList = News::where("isActive", true)
            ->where("isDisplayHomepage", true)
            ->where("id", "!=", $news->id)
            ->select("id", "title", "image", "summary", "type")
            ->orderBy("ordering", "asc")
            ->get();

        $newsList->each(function($query) {
            $query->createdAt = Carbon::parse($query->created_at)->format('F jS, Y');
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
