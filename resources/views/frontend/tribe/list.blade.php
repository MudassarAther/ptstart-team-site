<?php

/**
 * @author Dejan
 * @since  Sep 19, 2018
 */

use App\Models\Tribe;
use App\Models\Topic;
use App\Models\File;

?>

@extends('layouts.app')

@push('scripts')
    <!-- Javascript Library -->
    <script src="{{ asset('plugins/jquery-form/dist/jquery.form.min.js') }}" defer></script>
    <script src="{{ asset('plugins/jcrop/js/jquery.Jcrop.min.js') }}" defer></script>
    <script src="{{ asset('js/helpers/fileinput.js') }}" defer></script>
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}" defer></script>

    <!-- Page Javascript -->
    <script src="{{ asset('js/frontend/tribe/list.js') }}" defer></script>
@endpush

@push('stylesheets')
    <!-- Plugin StyleSheets -->
    <link href="{{ asset('plugins/fileinput/css/bs-fileinput.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/jcrop/css/jquery.Jcrop.min.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />

    <!-- Page StyleSheets -->
    <link href="{{ asset('css/frontend/tribe/list.css') }}" rel="stylesheet">
@endpush

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-10">

            {{ show_messages() }}


        </div>
    </div>

    <!-- tribes header -->
    <div class="tribes-header">

      <!-- tribes page title -->
      <h2>Tribes</h2>
    </div>

    <!-- tribe filter -->
    <div class="tribe-filter">

      <!-- topic filter -->
      <div class="dropdown grp-filter-topic mx-1 my-3">
        <button class="btn btn-filter-topic dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">All<span class="caret"></span></button>
        <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" data-id='0'>All</a></li>
          @forelse ($topics as $topic)
          <li role="presentation"><a role="menuitem" tabindex="-1" href="#" data-id="{{ $topic->id }}">{{ $topic->name }}</a></li>
          @empty
          @endforelse
        </ul>
      </div>

      <div class="label-filter mx-1 my-3">Tribes in</div>

      <!-- location filter -->
      <div style="padding: 23px;">
        <select class="location-select" name="state" style="width: 200px;">
          <option value="0" selected="selected">All</option>
        </select>
      </div>
    </div>

    <div class="clearfix"></div>
    <!-- project grid -->
    <div class="tribe-list-view">
      @include ('frontend.tribe.partials.list-add')
    </div>
</div>
@endsection
