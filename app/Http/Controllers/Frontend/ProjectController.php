<?php

/**
 * @author Dejan
 * @since  Sep 19, 2018
 */

namespace App\Http\Controllers\Frontend;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

// Models
use App\Models\Project;
use App\Models\Tribe;
use App\Models\User;
use App\Models\Topic;
use App\Models\Pseudo\Location;
use Igaster\LaravelCities\Geo;

class ProjectController extends Controller
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

      $projects = $this->list($topic, $location);
      $topics = Topic::all();
      $locations = Location::all();

      return view('frontend.project.list', [
        'projects' => $projects,
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

      $projects = $this->list($topic, $location);

      $html = view('frontend.project.partials.list-add', [
        'projects' => $projects,
        'selected_topic' => $topic,
        'selected_location' => $location,
      ])->render();
      return $html;
    }

    /**
     * get projects by topic and location
     * topic and location is id and can be null or 0
     */
    private function list($topic_id, $location_id) {

      // get all
      $projects = Project::whereRaw('1=1');
      $projects = $this->filter_list($projects, $topic_id, $location_id);

      return $projects;
    }

    /**
     *
     */
    private function filter_list($projects, $topic_id, $location_id) {

      // get by topic
      if (!empty($topic_id) && $topic_id != 0) {
        $projects = $projects->where('topic_id', '=', $topic_id);
      }

      // get by location
      if (!empty($location_id) && $location_id != 0) {
        $location_ids = Location::findIdsWithParent($location_id);
        $projects = $projects->wherein('location_id', $location_ids);
      }

      return $projects->get();
    }

    /**
     * if you don't konw tribe when creating project,
     * you need to select a tribe before creating project.
     */
    public function preCreate() {

      add_message(__('message.project.precreate'), 'warning');
      return redirect()->route('tribe.list');
    }

    /**
     * Create new project
     */
    public function create(Request $request, $id) {
        $user = Auth::user();

        $tribe = Tribe::find($id);

        if (!$tribe)
            abort(404);

        if (!Auth::user()->accessRightByTribe($tribe)) {
            add_message(__('message.tribe.need_join'), 'danger');
            return redirect()->route('tribe.detail', ['id' => $tribe->id]);
        }

        if (!$tribe->accessRightByProjectNumber()) {
            add_message(__('message.tribe.max_project', ['max' => Tribe::MAX_ENABLED_PROJECT]), 'danger');
            return redirect()->route('tribe.detail', ['id' => $tribe->id]);
        }

        if ($request->isMethod('POST')) {
            $project = $request->project;

            $project = new Project();
            $project->title         = $request->project['title'];
            $project->description   = $request->project['description'];
            $project->location_id   = $request->project['location_id'];
            $project->topic_id      = $request->project['topic_id'];
            $project->tribe_id      = $id;
            $project->creator_id    = $user->id;
            $project->members       = 0;
            $project->country_id    = 0;

            $project->save();

            $project->members()->attach($user->id,
                ['status' => User::STATUS_ACCEPT,
                 'message' => '']);

            add_message(__('message.project.created'), 'success');

            return redirect()->route('project.list');
        }

        return view('frontend.project.create', ['tribe' => $tribe, 'project' => new Project()]);
    }
}
