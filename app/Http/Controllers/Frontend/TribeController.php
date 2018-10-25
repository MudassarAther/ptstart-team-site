<?php

/**
 * @author Dejan
 * @since  Sep 19, 2018
 */

namespace App\Http\Controllers\Frontend;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Pagination\LengthAwarePaginator;

// Models
use App\Models\User;
use App\Models\Tribe;
use App\Models\Topic;
use App\Models\StripePlan;
use App\Models\Pseudo\Location;
use Igaster\LaravelCities\Geo;

class TribeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        parent::__construct();
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $topic=null, $location=null) {
      $tribes = $this->list($topic, $location);

      // Get current page form url e.x. &page=1
      $currentPage = LengthAwarePaginator::resolveCurrentPage();

      // Create a new Laravel collection from the array data
      $itemCollection = collect($tribes);

      // Define how many items we want to be visible in each page
      $perPage = self::COUNT_PER_PAGE;

      // Slice the collection to get the items to display in current page
      $currentPageItems = $itemCollection->slice(($currentPage * $perPage) - $perPage, $perPage)->all();

      // Create our paginator and pass it to the view
      $paginatedItems= new LengthAwarePaginator($currentPageItems , count($itemCollection), $perPage);

      // set url path for generted links
      $paginatedItems->setPath($request->url());

      $topics = Topic::all();
      $locations = Location::all();

      return view('frontend.tribe.list', [
        //'tribes' => $paginatedItems,
        'tribes' => $tribes,
        'topics' => $topics,
        'locations' => $locations,
      ]);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index_ajax(Request $request, $topic=null, $location=null) {

      $tribes = $this->list($topic, $location);

      $html = view('frontend.tribe.partials.list-add', [
        'tribes' => $tribes,
        'selected_topic' => $topic,
        'selected_location' => $location,
      ])->render();
      return $html;
    }

    /**
     * get tribes by topic and location
     * topic and location is id and can be null or 0
     */
    private function list($topic_id, $location_id) {
      $user = Auth::user();

      if (empty($user)) {

        // get all
        $tribes = Tribe::whereRaw('1=1');
        $tribes = $this->filter_list($tribes, $topic_id, $location_id);
      } else {
        $my_tribes = Tribe::where('creator_id', '=', $user->id);
        $my_tribes = $this->filter_list($my_tribes, $topic_id, $location_id);

        $other_tribes = Tribe::where('creator_id', '<>', $user->id);
        $other_tribes = $this->filter_list($other_tribes, $topic_id, $location_id);

        $tribes = $my_tribes->merge($other_tribes);
      }
      return $tribes;
    }

    /**
     *
     */
    private function filter_list($tribes, $topic_id, $location_id) {

      // get by topic
      if (!empty($topic_id) && $topic_id != 0) {
        $tribes = $tribes->where('topic_id', '=', $topic_id);
      }

      // get by location
      if (!empty($location_id) && $location_id != 0) {
        $location_ids = Location::findIdsWithParent($location_id);
        $tribes = $tribes->wherein('location_id', $location_ids);
      }

      return $tribes->get();
    }
    
    /**
     * Create new tribe
     */
    public function create(Request $request) {
        $user = Auth::user();

        if (!$user->accessRightByTribeNumber()) {
            add_message(__('message.tribe.max_create', ['max' => User::MAX_TRIBE_CREATE_COUNT]), 'danger');
            return redirect()->route('tribe.list');
        }

        if ($request->isMethod('POST')) {
            $tribe = $request->tribe;

            $tribe = new Tribe();
            $tribe->title       = $request->tribe['title'];
            $tribe->description = $request->tribe['description'];
            $tribe->location_id = $request->tribe['location_id'];
            $tribe->topic_id    = $request->tribe['topic_id'];
            $tribe->creator_id  = $user->id;

            $tribe->save();

            $tribe->members()->attach($user->id,
                ['status' => User::STATUS_ACCEPT,
                 'message' => '']);

            add_message(__('message.tribe.created'), 'success');

            return redirect()->route('tribe.detail', ['id' => $tribe->id]);
        }

        return view('frontend.tribe.create', [
            'tribe' => new Tribe(),
            'user' => $user,
            'plan' => StripePlan::find(StripePlan::PLAN_TRIBE_LEADER)
        ]);
    }
}
