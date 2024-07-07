<?php

namespace App\Http\Controllers\Website\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\Campaign;
use App\Models\CampaignCategory;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CampaignController extends Controller
{
    public function getDropdown()
    {
        $categories = CampaignCategory::where("isActive", true)->orderBy("ordering")->get();
        return response()->json([
            'message' => 'Get Dropdown',
            'status' => 'success',
            'categories' => $categories
        ], 200);
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $status = request("status", null);
        $data = Campaign::where("creatorId", auth()->id())->when($status, function($query) use ($status) {
            $query->where("status", $status);
        })->orderBy('id', 'desc')->get();

        $data->each(function($query) {
            $query->campaignGallery = json_decode($query->campaignGallery);
            $query->raised = 0;
            $query->createdAt = Carbon::parse($query->created_at)->format('F jS, Y');
        });

        return response()->json([
            'message' => 'Get list success.',
            'status' => 'success',
            'data' => $data,
            'record' => [
                "pending" => Campaign::where("creatorId", auth()->id())->where("status", "PENDING")->count(),
                "draft" => Campaign::where("creatorId", auth()->id())->where("status", "DRAFT")->count(),
                "complete" => Campaign::where("creatorId", auth()->id())->where("status", "COMPLETE")->count(),
                "inactive" => Campaign::where("creatorId", auth()->id())->where("status", "INACTIVE")->count(),
                "reject" => Campaign::where("creatorId", auth()->id())->where("status", "REJECT")->count(),
                "fail" => Campaign::where("creatorId", auth()->id())->where("status", "FAIL")->count(),
                "total" => Campaign::where("creatorId", auth()->id())->count(),
            ]
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $dataForm = [
            "creatorId" => auth()->id(),
            "campaignCategoryId" => $request->campaignCategory ?  $request->campaignCategory["value"] : null,
            "location" => request("location", null),
            "campaignTile" => request("campaignTile", null),
            "campaignTileKm" => request("campaignTileKm", null),
            "fullStory" => request("fullStory", null),
            "fullStoryKm" => request("fullStoryKm", null),
            "additionalInformation" => request("additionalInformation", null),
            "additionalInformationKm" => request("additionalInformationKm", null),
            "involvement" => request("involvement", null),
            "involvementKm" => request("involvementKm", null),
            "referenceLink" => request("referenceLink", null),
            "goal" => request("goal", 0.0),
            "startDate" => request("startDate", null),
            "endDate" => request("endDate", null),
            "gratitude" => request("gratitude", null),
            "gratitudeKm" => request("gratitudeKm", null),
            "campaignFor" => request("campaignFor", null),
            "phoneNumber" => request("phoneNumber", null),
            "fullName" => request("fullName", null),
            "documentType" => $request->documentType ?  $request->documentType["value"] : null,
            "identityNumber" => request("identityNumber", null),
            "creatorLocation" => request("creatorLocation", null),
            "creatorCity" => request("creatorCity", null),
            "receiveByBank" => request("receiveByBank", null),
            "accountName" => request("accountName", null),
            "accountNumber" => request("accountNumber", null),
            "videoLink" => request("videoLink", null),
            "campaignGallery" => json_encode(request("campaignGallery", [])),
            "videoFile" => request("videoFile", null),
            "idCardBack" => request("idCardBack", null),
            "idCardFront" => request("idCardFront", null),
            "passport" => request("passport", null),
            "profile" => request("profile", null),
            "ordering" => request("ordering", 0),
            'isActive' => request("isActive", true),
            "status" => request("status", null)
        ];

        $result = $this->_onSave($request->id, $dataForm);

        if (!$result) {
            return response()->json([
                'message' => 'Save record is failed.',
                'status' => 'failed'
            ], 200);
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
