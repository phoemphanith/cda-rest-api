<?php

use App\Http\Controllers as API;
use App\Http\Controllers\AdminController as Admin;
use App\Http\Controllers\Website as Website;
use App\Http\Controllers\AdminController\CampaignCategoryController;
use App\Http\Controllers\FileStorageController;
use App\Http\Controllers\Website\Dashboard\CampaignController;
use App\Http\Controllers\Website\DonationController;
use App\Http\Controllers\Website\WebPageController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::group([
    'middleware' => 'api',
    'prefix' => 'auth'
], function () {
    Route::post('/login', [API\AuthController::class, 'login']);
    Route::post('/login-web', [API\AuthController::class, 'loginWeb']);
    Route::post('/register', [API\AuthController::class, 'register']);
    Route::post('/register-web', [API\AuthController::class, 'registerWeb']);
    Route::post('/google-auth', [API\AuthController::class, 'googleAuth']);
    Route::post('/logout', [API\AuthController::class, 'logout']);
    Route::post('/logout-web', [API\AuthController::class, 'logoutWeb']);
    Route::get('/user-profile', [API\AuthController::class, 'userProfile']);
    Route::put('/update-user', [API\AuthController::class, 'updateUser']);
    Route::put('/change-password', [API\AuthController::class, 'changeAuth']);
    Route::post('/send-code', [API\AuthController::class, 'sendEmailVerifyCode']);
    Route::post('/verify-code', [API\AuthController::class, 'getEmailVerifyCode']);
});

Route::group(['middleware' => 'api', 'prefix' => 'users'], function () {
    Route::get("/", [API\UserController::class, "index"]);
    Route::post("/", [API\UserController::class, "store"]);
    Route::get("/detail", [API\UserController::class, "show"]);
    Route::delete("/delete/{id}", [API\UserController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'performances'], function () {
    Route::get("/", [Admin\PerformanceController::class, "index"]);
    Route::post("/", [Admin\PerformanceController::class, "store"]);
    Route::get("/detail", [Admin\PerformanceController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\PerformanceController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'news'], function () {
    Route::get("/", [Admin\NewsController::class, "index"]);
    Route::post("/", [Admin\NewsController::class, "store"]);
    Route::get("/detail", [Admin\NewsController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\NewsController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'campaign-categories'], function () {
    Route::get("/", [Admin\CampaignCategoryController::class, "index"]);
    Route::post("/", [Admin\CampaignCategoryController::class, "store"]);
    Route::get("/detail", [Admin\CampaignCategoryController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\CampaignCategoryController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'projects'], function () {
    Route::get("/", [Admin\ProjectController::class, "index"]);
    Route::post("/", [Admin\ProjectController::class, "store"]);
    Route::get("/detail", [Admin\ProjectController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\ProjectController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'campaigns'], function () {
    Route::get("/", [Admin\CampaignController::class, "index"]);
    Route::post("/", [Admin\CampaignController::class, "store"]);
    Route::get("/detail", [Admin\CampaignController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\CampaignController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'testimonials'], function () {
    Route::get("/", [Admin\TestimonialController::class, "index"]);
    Route::post("/", [Admin\TestimonialController::class, "store"]);
    Route::get("/detail", [Admin\TestimonialController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\TestimonialController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'technologies'], function () {
    Route::get("/", [Admin\TechnologyController::class, "index"]);
    Route::post("/", [Admin\TechnologyController::class, "store"]);
    Route::get("/detail", [Admin\TechnologyController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\TechnologyController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'banners'], function () {
    Route::get("/", [Admin\BannerController::class, "index"]);
    Route::post("/", [Admin\BannerController::class, "store"]);
    Route::get("/detail", [Admin\BannerController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\BannerController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'page-banners'], function () {
    Route::get("/", [Admin\PageBannerController::class, "index"]);
    Route::post("/", [Admin\PageBannerController::class, "store"]);
    Route::get("/detail", [Admin\PageBannerController::class, "show"]);
    Route::delete("/delete/{id}", [Admin\PageBannerController::class, "destroy"]);
});

Route::group(['middleware' => 'api', 'prefix' => 'site-setting'], function () {
    Route::post('/', [Admin\SiteSettingController::class, 'onSave']);
    Route::get('/{type}', [Admin\SiteSettingController::class, 'index']);
});

Route::post("/save-image/{dir}", [FileStorageController::class, "uploadImage"]);
Route::post("/save-content-image", [FileStorageController::class, "uploadContent"]);
Route::delete("/save-image/{dir}", [FileStorageController::class, "deleteImage"]);
Route::get("/save-image/{dir}", [FileStorageController::class, "previewImage"]);


// Website Public

Route::prefix('/web')->group(function () {
    Route::get("/feed-list", [Website\FeedController::class, "index"]);
    Route::group(["prefix" => "donation"], function() {
        Route::post("/", [DonationController::class, "donation"]);
        Route::get("/donor-list", [DonationController::class, "donationList"]);
    });
    Route::group(["prefix" => "campaign"], function() {
        Route::get("/dropdown", [Website\CampaignController::class, "dropdown"]);
        Route::get("/home", [Website\CampaignController::class, "homeCampaign"]);
        Route::get("/project", [Website\CampaignController::class, "projectCampaign"]);
        Route::get("/project/{id}", [Website\CampaignController::class, "campaignDetail"]);
        Route::get("/donor-list/{campaignId}", [Website\CampaignController::class, "getAllDonorByCampaign"]);
    });
});

Route::get("/contact-us-page", [WebPageController::class, "contactUs"]);
Route::post("/sending-email", [WebPageController::class, "sendingEmail"]);
Route::get("/privacy-policy-page", [WebPageController::class, "privacyPolicy"]);
Route::get("/term-service-page", [WebPageController::class, "termService"]);

// Website Private
// User Dashboard
Route::get("/category-dropdown", [CampaignController::class, "getDropdown"]);
Route::group(['middleware' => 'api', 'prefix' => 'campaign-web'], function () {
    Route::get("/", [CampaignController::class, "index"]);
    Route::post("/", [CampaignController::class, "store"]);
    Route::get("/detail", [CampaignController::class, "show"]);
    Route::delete("/delete/{id}", [CampaignController::class, "destroy"]);
});
