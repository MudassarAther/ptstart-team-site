<?php

/**
 * @author Dejan
 * @since  Sep 23, 2018
 */

namespace App\Http\Controllers\Frontend\Discussion;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

// Models
use App\Models\User;
use App\Models\Discussion;

class DetailController extends Controller
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
     * Discussion Detail Page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request, $id) {
        $discussion = Discussion::find($id);

        if (!$discussion)
            abort(404);

        return view('frontend.discussion.detail', ['discussion' => $discussion, 'page' => 'overview']);
    }

    /**
     * Discussion Edit Page.
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, $id) {

        $type = $request->type;
        $ref_id = $request->ref_id;
        $discussion = Discussion::find($id);

        if (!$discussion)
            abort(404);

        if ($request->isMethod('POST')) {

            $type = $request->type;
            $ref_id = $request->ref_id;

            $discussion->title       = $request->discussion['title'];
            $discussion->description = $request->discussion['description'];

            $discussion->save();

            add_message(__('message.discussion.updated'), 'success');

            return redirect()->route('discussion.list', [
                'type' => $type,
                'ref_id' => $ref_id
            ]);
        }

        return view('frontend.discussion.detail.edit', [
            'discussion' => $discussion,
            'type' => $type,
            'ref_id' => $ref_id
        ]);
    }

    /**
     * delete discussion
     *
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request, $id) {
      $discussion = Discussion::find($id);
      $discussionable = $discussion->discussionable;
      Discussion::destroy($id);
      $discussions = $discussionable->discussions;
      //return view('frontend.discussion.partials.list', ['discussions' => $discussions])->render();
    }
}
