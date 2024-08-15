<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\SiteSetting;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function contactPage()
    {
        $page = SiteSetting::where("type", "CONTACT")->first();
        $content = json_decode($page->content);
        return response()->json($content);
    }
}
