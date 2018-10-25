<?php

/**
 * @author Dejan
 * @since  Oct 12, 2018
 */

?>

@push('stylesheets')
<!-- Page Style -->
<link href="{{ asset('css/frontend/project/partials/list.css') }}" rel="stylesheet">
@endpush

<!-- project grid -->
@foreach ($projects->chunk(3) as $chunk)

  <div class="row project-list">
      @foreach ($chunk as $project)
          <div class="col-lg-4">
            @include ('frontend.project.partials.item')
          </div>
      @endforeach
  </div>
@endforeach
