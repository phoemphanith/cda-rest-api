<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use App\Models\News;
use Carbon\Carbon;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function newsEvents(Request $request)
    {
        $type = $request->type;
        $data = News::select(
            "id",
            "title",
            "image",
            "summary",
            "type",
            "created_at"
        )->when($type, function ($query) use ($type) {
            $query->where("type", $type);
        })->where("isActive", true)->orderBy("created_at", "desc")->get();
        $data->each(function ($query) {
            $query->createdAt = Carbon::parse($query->created_at)->format('jS F, Y');
        });

        return response()->json($data);
    }

    public function listRelated(Request $request)
    {
        $type = $request->type;
        $id = $request->id;
        $data = News::select(
            "id",
            "title",
            "image",
            "summary",
            "type",
            "created_at"
        )
            ->when($type, function ($query) use ($type) {
                $query->where("type", $type);
            })
            ->where("id", "!=", $id)
            ->where("isActive", true)
            ->orderBy("created_at", "desc")
            ->limit(6)
            ->get();
        $data->each(function ($query) {
            $query->createdAt = Carbon::parse($query->created_at)->format('jS F, Y');
        });

        return response()->json($data);
    }

    public function detail($id)
    {
        $data = News::where("id", $id)->first();
        return response()->json($data);
    }
}
