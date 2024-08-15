<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function aboutPage()
    {
        $page = SiteSetting::where("type", "ABOUT_PAGE")->first();
        $content = json_decode($page->content);
        return response()->json($content);
    }
}
