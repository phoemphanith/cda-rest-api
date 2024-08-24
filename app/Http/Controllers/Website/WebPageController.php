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

    public function pageBanner(Request $request)
    {
        $pageBanner = PageBanner::where("pageTitle", $request->type)->first();
        return response()->json($pageBanner ? $pageBanner->image : null);
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
