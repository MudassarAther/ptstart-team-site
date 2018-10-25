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
@foreach ($tribes->chunk(3) as $chunk)

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
