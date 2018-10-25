<?php

/**
 * @author Dejan
 * @since  Oct 17, 2018
 */

?>

@push('stylesheets')
<!-- Page Style -->
<link href="{{ asset('css/frontend/project/partials/list.css') }}" rel="stylesheet">
@endpush

<?php
$count = 1;
?>
<!-- tribe grid -->
<?php
$first = $projects->slice(0, 2);
$rest = $projects->slice(2);
?>

<div class="row project-list">
  <div class="col-lg-4">
    @include ('frontend.project.partials.item-add')
  </div>
  @foreach ($first as $project)
    <div class="col-lg-4">
      @include ('frontend.project.partials.item')
    </div>
  @endforeach
</div>

@foreach ($rest->chunk(3) as $chunk)
  <div class="row project-list">
    @foreach ($chunk as $project)
      <div class="col-lg-4">
        @include ('frontend.project.partials.item')
      </div>
    @endforeach
  </div>
@endforeach

<input type="hidden" id="selected-topic-id" value="{{ isset($selected_topic) ? $selected_topic : '0' }}" />
<input type="hidden" id="selected-location-id" value="{{ isset($selected_location) ? $selected_location : '0' }}" />
