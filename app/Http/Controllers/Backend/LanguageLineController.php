<?php

/**
 * @author Dejan
 * @since  Oct 1, 2018
 */

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Backend\BackendController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\TranslationLoader\LanguageLine;

class LanguageLineController extends BackendController
{
    /*
    |--------------------------------------------------------------------------
    | LanguageLine Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles requests for languagelines
    |
    */

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Show the list of tribes.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {

      $lines = DB::table('language_lines')->get();
        //->paginate(self::COUNT_PER_PAGE);

      return view('backend.setting.languageline.list', [
        'languagelines' => $lines
      ]);
    }

    /**
     * edit one language line
     *
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request) {
      $line = LanguageLine::find($request->pk);
      $line->text = [
        'en' => $request->value,
      ];
      $line->save();

      return response()->json([
        'success'=>'done',
        'value' => $line->text['en'],
      ]);
    }
}
