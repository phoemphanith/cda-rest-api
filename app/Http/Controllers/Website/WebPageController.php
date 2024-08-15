<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\PageBanner;
use App\Models\Performance;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class WebPageController extends Controller
{
    public function howItWork()
    {
        $howItWork = Performance::where("isActive", true)->orderBy("ordering", "asc")->get();
        return response()->json($howItWork);
    }
    public function privacyPolicy()
    {
        $privacyPolicy = SiteSetting::where("type", "PRIVACY_POLICY")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "privacyPolicy" => $privacyPolicy ? json_decode($privacyPolicy->content) : null,
        ], 200);
    }

    public function termService()
    {
        $termService = SiteSetting::where("type", "TERM_SERVICE")->first();
        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "termService" => $termService ? json_decode($termService->content) : null,
        ], 200);
    }

    public function contactUs()
    {
        $contact = SiteSetting::where("type", "CONTACT")->first();
        $aboutCompany = SiteSetting::where("type", "ABOUT_COMPANY")->first();
        $pageBanners = PageBanner::where("isActive", true)->get();
        $pageBanner = null;
        foreach ($pageBanners as $page) {
            $pageBanner[$page->pageTitle] = $page->image;
        }

        return response()->json([
            "status" => "success",
            "message" => "Load data success",
            "contact" => $contact ? json_decode($contact->content) : null,
            "aboutCompany" => $aboutCompany ? json_decode($aboutCompany->content) : null,
            "pageBanner" => $pageBanner
        ], 200);
    }

    public function sendingEmail(Request $request)
    {
        $email = $request->email;
        $subject = $request->subject;
        \Mail::send(
            'email',
            array(
                'name' => $request->name,
                'email' => $email,
                'number' => $request->number,
                'subject' => $subject,
                'text' => $request->text,
            ),
            function ($message) use ($email, $subject) {
                $message->from($email);
                $message->subject($subject);
                $message->to('info@camgotech.acitytech.com');
            }
        );

        return response(['status' => true, 'message' => "Send Email Successfully"]);
    }
}
