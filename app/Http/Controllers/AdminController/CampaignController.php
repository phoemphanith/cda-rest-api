<?php

namespace App\Http\Controllers\AdminController;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use App\Models\Donation;
use App\Models\Feed;
use App\Models\User;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CampaignController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        $data = Campaign::where("status", "!=", "DRAFT")->orderBy('id', 'desc')->get();
        $data->each(function($query)  {
            $query->campaignGallery = json_decode($query->campaignGallery);
            $query->campaignCategory = CampaignCategory::where("id", $query->campaignCategoryId)->first();
            $query->startDate = Carbon::parse($query->StartDate)->format('F jS, Y');
            $query->endDate = Carbon::parse($query->endDate)->format('F jS, Y');
        });

        return response()->json([
            'message' => 'Get list success.',
            'status' => 'success',
            'data' => $data
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $dataForm = [
            "isInNeed" => request("isInNeed", false),
            "isTrending" => request("isTrending", false),
            "isLatest" => request("isLatest", false),
            "allowEdit" => request("allowEdit", false),
            "status" => request("status", "PENDING"),
            "ordering" => request("ordering", 0)
        ];

        $result = $this->_onSave($request->id, $dataForm);

        if (!$result) {
            return response()->json([
                'message' => 'Save record is failed.',
                'status' => 'failed'
            ], 200);
        }

        if($dataForm["status"] == "COMPLETE") {
            $campaign = Campaign::where("id", $request->id)->first();
            Feed::create([
                "creatorId" => $campaign->creatorId,
                "feedType" => "APPROVE",
                "campaignId" => $request->id,
                "donationId" => null,
                "publishedAt" => Carbon::now()
            ]);
        }

        return response()->json([
            'message' => 'Save record is successfully.',
            'status' => 'success'
        ], 200);
    }

    /**
     * Display the specified resource.
     */
    public function show(Request $request)
    {
        $model = Campaign::findOrFail($request->id);
        $model->campaignCategory = CampaignCategory::where("id", $model->campaignCategoryId)->first();
        $model->campaignGallery = json_decode($model->campaignGallery);
        $model->startDate = Carbon::parse($model->StartDate)->format('F jS, Y');
        $model->endDate = Carbon::parse($model->endDate)->format('F jS, Y');
        $model->creator = User::select("id", "name", "email", "phoneNumber")->where("id", $model->creatorId)->first();
        $donations = Donation::where("campaignId", $model->id)->orderBy("id", "DESC")->get();
        $donations->each(function($query) {
            $query->donor = User::select("id", "name", "image", "email", "phoneNumber")->where("id", $query->donorId)->first();
        });
        $model->donations = $donations;
        return response()->json([
            'message' => 'Get detail success.',
            'status' => 'success',
            'model' => $model
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $model = Campaign::findOrFail($id);
        $model->delete();
        return response()->json([
            'message' => 'Delete successfully.',
            'status' => 'success'
        ], 200);
    }

    private function _onSave($id, $data)
    {
        try {
            if ($id) {
                Campaign::where('id', $id)->update($data);
            } else {
                Campaign::create($data);
            }
        } catch (Exception $error) {
            Log::info('Error: ' . $error->getMessage());
            return false;
        }
        return true;
    }
}
