<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function aboutPage(Request $request)
    {
        $lang = $request->header("Accept-Language");
        $page = SiteSetting::where("type", "ABOUT_PAGE")->first();
        $content = json_decode($page->content);
        
        return response()->json([
            "introTitle" => $lang == "KHM" ? ($content->introTitleKh ? $content->introTitleKh : $content->introTitle ) : $content->introTitle,
            "introDesc" => $lang == "KHM" ? ($content->introDescKh ? $content->introDescKh : $content->introDesc ) : $content->introDesc,
            "introHighlight" => $lang == "KHM" ? ($content->introHighlightKh ? $content->introHighlightKh : $content->introHighlight ) : $content->introHighlight,
            "successfulCampaign" => $content->successfulCampaign ?: 0,
            "amazingDonors" => $content->amazingDonors ?: 0,
            "donorTrusted" => $content->donorTrusted ?: 0,
            "thumbnailTwo" => $content->thumbnailTwo ?: "",
            "cardTitle1" => $lang == "KHM" ? ($content->cardTitleKh1 ? $content->cardTitleKh1 : $content->cardTitle1 ) : $content->cardTitle1,
            "cardDesc1" => $lang == "KHM" ? ($content->cardDescKh1 ? $content->cardDescKh1 : $content->cardDesc1 ) : $content->cardDesc1,
            "cardIcon1" => $content->cardIcon1 ?: "",
            "cardTitle2" => $lang == "KHM" ? ($content->cardTitleKh2 ? $content->cardTitleKh2 : $content->cardTitle2 ) : $content->cardTitle2,
            "cardDesc2" => $lang == "KHM" ? ($content->cardDescKh2 ? $content->cardDescKh2 : $content->cardDesc2 ) : $content->cardDesc2,
            "cardIcon2" => $content->cardIcon2 ?: "",
            "cardTitle3" => $lang == "KHM" ? ($content->cardTitleKh3 ? $content->cardTitleKh3 : $content->cardTitle3 ) : $content->cardTitle3,
            "cardDesc3" =>$lang == "KHM" ? ($content->cardDescKh3 ? $content->cardDescKh3 : $content->cardDesc3 ) : $content->cardDesc3,
            "cardIcon3" => $content->cardIcon3 ?: "",
            "bannerDesc" => $lang == "KHM" ? ($content->bannerDescKh ? $content->bannerDescKh : $content->bannerDesc ) : $content->bannerDesc,
            "bannerLabel" => $lang == "KHM" ? ($content->bannerLabelKh ? $content->bannerLabelKh : $content->bannerLabel ) : $content->bannerLabel,
            "bannerLinkTo" => $content->bannerLinkTo ?: "",
            "thumbnail" => $content->thumbnail ?: "",
            "totalDonation" => $content->totalDonation ?: 0,
            "projectClosed" => $content->projectClosed ?: 0,
            "happyPeople" => $content->happyPeople ?: 0,
            "ourVolunteer" => $content->ourVolunteer ?: 0,
            "professionalVolunteer" => $lang == "KHM" ? ($content->professionalVolunteerKh ? $content->professionalVolunteerKh : $content->professionalVolunteer ) : $content->professionalVolunteer,
            "ourDonors" => $lang == "KHM" ? ($content->ourDonorsKh ? $content->ourDonorsKh : $content->ourDonors ) : $content->ourDonors,
            "thumbnailFive" => $content->thumbnailFive ?: "",
        ]);
    }
}
