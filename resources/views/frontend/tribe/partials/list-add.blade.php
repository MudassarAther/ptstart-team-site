<?php

/**
 * @author Dejan
 * @since  Oct 16, 2018
 */

?>

@push('stylesheets')
<!-- Page Style -->
<link href="{{ asset('css/frontend/tribe/partials/list.css') }}" rel="stylesheet">
@endpush

<?php
$count = 1;
?>
<!-- tribe grid -->
<?php
$first = $tribes->slice(0, 2);
$rest = $tribes->slice(2);
?>

<div class="row tribe-list">
  <div class="col-lg-4">
    @include ('frontend.tribe.partials.item-add')
  </div>
  @foreach ($first as $tribe)
    <div class="col-lg-4">
      @include ('frontend.tribe.partials.item')
    </div>
  @endforeach
</div>

@foreach ($rest->chunk(3) as $chunk)

  <?php
  if ($count < 3) {
  ?>
    <div class="row tribe-list">
      @foreach ($chunk as $tribe)
        <div class="col-lg-4">
          @include ('frontend.tribe.partials.item')
        </div>
      @endforeach
    </div>
  <?php
    $count++;
  }
  ?>
@endforeach

<input type="hidden" id="selected-topic-id" value="{{ isset($selected_topic) ? $selected_topic : '0' }}" />
<input type="hidden" id="selected-location-id" value="{{ isset($selected_location) ? $selected_location : '0' }}" />
