<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class TermConditionController extends Controller
{
    public function termConditionPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $page = SiteSetting::where("type", "TERM_SERVICE")->first();
        $content = json_decode($page->content);
        return response()->json([
            "description" => $lang == "KHM" ? ($content->descriptionKh?: $content->description) : $content->description
        ]);
    }
}
