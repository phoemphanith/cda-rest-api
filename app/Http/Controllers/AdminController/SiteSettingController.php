<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class SiteSettingController extends Controller
{
    public function index($type)
    {
        $model = SiteSetting::where('type', 'LIKE', $type)->first();
        if (!$model) {
            return response()->json([
                'message' => 'Get detail failed.',
                'status' => 'failed',
                'model' => null
            ], 200);
        }
        $model->content = json_decode($model->content);
        return response()->json([
            'message' => 'Get detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    public function onSave(Request $req)
    {
        $item = [];
        switch ($req->type) {
            case 'ABOUT_COMPANY':
                $item = $this->_aboutCompany($req);
                break;
            case 'WHO_WE_ARE':
                $item = $this->_whoWeAre($req);
                break;
            case 'HOME_PAGE':
                $item = $this->_homePage($req);
                break;
            case 'ABOUT_PAGE':
                $item = $this->_aboutPage($req);
                break;
            case 'SKILLSET':
                $item = $this->_skillset($req);
                break;
            case 'SERVICE':
                $item = $this->_service($req);
                break;
            case 'WHY_CHOOSE_US':
                $item = $this->_whyChooseUs($req);
                break;
            case 'PROJECT':
                $item = $this->_project($req);
                break;
            case 'TESTIMONIAL':
                $item = $this->_testimonial($req);
                break;
            case 'WEB_HOSTING':
                $item = $this->_webHosting($req);
                break;
            case 'TECH_NEWS':
                $item = $this->_techNews($req);
                break;
            case 'CONTACT':
                $item = $this->_contact($req);
                break;
            case 'TERM_SERVICE':
                $item = $this->_termService($req);
                break;
            case 'PRIVACY_POLICY':
                $item = $this->_privacyPolicy($req);
                break;
            default:
                $item = [];
                break;
        }

        $model = SiteSetting::where('type', $req->type)->first();
        if ($model) {
            $model->update(["content" => json_encode($item)]);
        } else {
            SiteSetting::create(["type" => $req->type, "content" => json_encode($item)]);
        }

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success'
        ], 200);
    }

    private function _aboutCompany(Request $body)
    {
        return [
            "companyName" => $body->companyName ?: "",
            "aboutCompany" => $body->aboutCompany ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }

    private function _whoWeAre(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }
    private function _skillset(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: "",
            "thumbnail" => $body->thumbnail ?: ""
        ];
    }

    public function _aboutPage(Request $body)
    {
        return [
            "introTitle" => $body->introTitle ?: "",
            "introTitleKh" => $body->introTitleKh ?: "",
            "introDesc" => $body->introDesc ?: "",
            "introDescKh" => $body->introDescKh ?: "",
            "introHighlight" => $body->introHighlight ?: "",
            "introHighlightKh" => $body->introHighlightKh ?: "",
            "successfulCampaign" => $body->successfulCampaign ?: 0,
            "amazingDonors" => $body->amazingDonors ?: 0,
            "donorTrusted" => $body->donorTrusted ?: 0,
            "thumbnailTwo" => $body->thumbnailTwo ?: "",
            "cardTitle1" => $body->cardTitle1 ?: "",
            "cardTitleKh1" => $body->cardTitleKh1 ?: "",
            "cardDesc1" => $body->cardDesc1 ?: "",
            "cardDescKh1" => $body->cardDescKh1 ?: "",
            "cardIcon1" => $body->cardIcon1 ?: "",
            "cardTitle2" => $body->cardTitle2 ?: "",
            "cardTitleKh2" => $body->cardTitleKh2 ?: "",
            "cardDesc2" => $body->cardDesc2 ?: "",
            "cardDescKh2" => $body->cardDescKh2 ?: "",
            "cardIcon2" => $body->cardIcon2 ?: "",
            "cardTitle3" => $body->cardTitle3 ?: "",
            "cardTitleKh3" => $body->cardTitleKh3 ?: "",
            "cardDesc3" => $body->cardDesc3 ?: "",
            "cardDescKh3" => $body->cardDescKh3 ?: "",
            "cardIcon3" => $body->cardIcon3 ?: "",
            "bannerDesc" => $body->bannerDesc ?: "",
            "bannerDescKh" => $body->bannerDescKh ?: "",
            "bannerLabel" => $body->bannerLabel ?: "",
            "bannerLabelKh" => $body->bannerLabelKh ?: "",
            "bannerLinkTo" => $body->bannerLinkTo ?: "",
            "thumbnail" => $body->thumbnail ?: "",
            "totalDonation" => $body->totalDonation ?: 0,
            "projectClosed" => $body->projectClosed ?: 0,
            "happyPeople" => $body->happyPeople ?: 0,
            "ourVolunteer" => $body->ourVolunteer ?: 0,
            "professionalVolunteer" => $body->professionalVolunteer ?: "",
            "professionalVolunteerKh" => $body->professionalVolunteerKh ?: "",
            "ourDonors" => $body->ourDonors ?: "",
            "ourDonorsKh" => $body->ourDonorsKh ?: "",
            "thumbnailFive" => $body->thumbnailFive ?: "",
        ];
    }

    private function _homePage(Request $body)
    {
        return [
            "latestProject" => $body->latestProject ?: "",
            "latestProjectKh" => $body->latestProjectKh ?: "",
            "bannerDesc" => $body->bannerDesc ?: "",
            "bannerDescKh" => $body->bannerDescKh ?: "",
            "bannerLabel" => $body->bannerLabel ?: "",
            "bannerLabelKh" => $body->bannerLabelKh ?: "",
            "bannerLinkTo" => $body->bannerLinkTo ?: "",
            "thumbnail" => $body->thumbnail ?: "",
            "cardTitle1" => $body->cardTitle1 ?: "",
            "cardTitleKh1" => $body->cardTitleKh1 ?: "",
            "cardDesc1" => $body->cardDesc1 ?: "",
            "cardDescKh1" => $body->cardDescKh1 ?: "",
            "cardLabel1" => $body->cardLabel1 ?: "",
            "cardLabelKh1" => $body->cardLabelKh1 ?: "",
            "cardIcon1" => $body->cardIcon1 ?: "",
            "cardLinkTo1" => $body->cardLinkTo1 ?: "",
            "cardIsShow1" => $body->cardIsShow1 ?: "",
            "thumbnailTwo" => $body->thumbnailTwo ?: "",
            "cardTitle2" => $body->cardTitle2 ?: "",
            "cardTitleKh2" => $body->cardTitleKh2 ?: "",
            "cardDesc2" => $body->cardDesc2 ?: "",
            "cardDescKh2" => $body->cardDescKh2 ?: "",
            "cardLabel2" => $body->cardLabel2 ?: "",
            "cardLabelKh2" => $body->cardLabelKh2 ?: "",
            "cardIcon2" => $body->cardIcon2 ?: "",
            "cardLinkTo2" => $body->cardLinkTo2 ?: "",
            "cardIsShow2" => $body->cardIsShow2 ?: "",
            "thumbnailThree" => $body->thumbnailThree ?: "",
            "cardTitle3" => $body->cardTitle3 ?: "",
            "cardTitleKh3" => $body->cardTitleKh3 ?: "",
            "cardDesc3" => $body->cardDesc3 ?: "",
            "cardDescKh3" => $body->cardDescKh3 ?: "",
            "cardLabel3" => $body->cardLabel3 ?: "",
            "cardLabelKh3" => $body->cardLabelKh3 ?: "",
            "cardIcon3" => $body->cardIcon3 ?: "",
            "cardLinkTo3" => $body->cardLinkTo3 ?: "",
            "cardIsShow3" => $body->cardIsShow3 ?: "",
            "thumbnailFour" => $body->thumbnailFour ?: "",
            "ourDonors" => $body->ourDonors ?: "",
            "ourDonorsKh" => $body->ourDonorsKh ?: "",
            "thumbnailFive" => $body->thumbnailFive ?: "",
            "getDailyUpdate" => $body->getDailyUpdate ?: "",
            "getDailyUpdateKh" => $body->getDailyUpdateKh ?: "",
        ];
    }

    private function _service(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _whyChooseUs(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _project(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _testimonial(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _webHosting(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _techNews(Request $body)
    {
        return [
            "title" => $body->title ?: "",
            "description" => $body->description ?: ""
        ];
    }
    private function _contact(Request $body)
    {
        return [
            'pageTitle' => $body->pageTitle ?: "",
            'pageTitleKh' => $body->pageTitleKh ?: "",
            'pageDescription' => $body->pageDescription ?: "",
            'pageDescriptionKh' => $body->pageDescriptionKh ?: "",
            'thumbnail' => $body->thumbnail ?: "",
            'email1' => $body->email1 ?: "",
            'email2' => $body->email2 ?: "",
            'phoneNumber1' => $body->phoneNumber1 ?: "",
            'phoneNumber2' => $body->phoneNumber2 ?: "",
            'address' => $body->address ?: "",
            'addressKh' => $body->addressKh ?: "",
            'embedMap' => $body->embedMap ?: "",
            'facebookLink' => $body->facebookLink ?: "",
            'instagramLink' => $body->instagramLink ?: "",
            'telegramLink' => $body->telegramLink ?: "",
            'linkedinLink' => $body->linkedinLink ?: ""
        ];
    }
    private function _termService(Request $body)
    {
        return [
            "description" => $body->description ?: "",
            "descriptionKh" => $body->descriptionKh ?: ""
        ];
    }
    private function _privacyPolicy(Request $body)
    {
        return [
            "description" => $body->description ?: "",
            "descriptionKh" => $body->descriptionKh ?: ""
        ];
    }
}
