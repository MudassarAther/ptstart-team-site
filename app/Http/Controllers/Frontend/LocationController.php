<?php

/**
 * @author Dejan
 * @since  Oct 24, 2018
 */

namespace App\Http\Controllers\Frontend;

use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

// Models
use App\Models\User;
use App\Models\Pseudo\Location;

class LocationController extends Controller
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
     *
     *
     * @return \Illuminate\Http\Response
     */
    public function index_ajax(Request $request) {

      $keyword = $request->input('term');

      return Location::find($keyword);
    }
}
