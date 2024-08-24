<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contactPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $page = SiteSetting::where("type", "CONTACT")->first();
        $content = json_decode($page->content);
        return response()->json([
            'pageTitle' => $lang == "KHM" ? ($content->pageTitleKh? $content->pageTitleKh : $content->pageTitle) : $content->pageTitle,
            'pageDescription' => $lang == "KHM" ? ($content->pageDescriptionKh?$content->pageDescriptionKh:$content->pageDescription)  : $content->pageDescription,
            'thumbnail' => $content->thumbnail ?: "",
            'email1' => $content->email1 ?: "",
            'email2' => $content->email2 ?: "",
            'phoneNumber1' => $content->phoneNumber1 ?: "",
            'phoneNumber2' => $content->phoneNumber2 ?: "",
            'address' => $lang == "KHM" ? ($content->addressKh ? $content->addressKh : $content->address) : $content->address,
            'embedMap' => $content->embedMap ?: "",
            'facebookLink' => $content->facebookLink ?: "",
            'instagramLink' => $content->instagramLink ?: "",
            'telegramLink' => $content->telegramLink ?: "",
            'linkedinLink' => $content->linkedinLink ?: ""
        ]);
    }
}
