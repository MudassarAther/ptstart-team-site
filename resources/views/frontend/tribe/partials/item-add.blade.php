@push('stylesheets')
<!-- Page Style -->
<link href="{{ asset('css/frontend/tribe/partials/item-add.css') }}" rel="stylesheet">
@endpush

<div class="tribe-item" style="border: 2px solid #E0E0E0;border-radius: 8px;">
  <div class="tribe-image">
    <a href="{{ route('tribe.create') }}" class="add-circle"></a>
    <a href="{{ route('tribe.create') }}" class="add-plus">+</a>
  </div>

  <!-- tribe infos box -->
  <div class="tribe-infos-box p-3">

    <!-- tribe name -->
    <a href="{{ route('tribe.create') }}"><h3>Add a<br>new Tribe</h3></a>

    <!-- tribe summary -->
    <p>Be adventurous and develop your own group! Press on the + button to get started.</p>
  </div>
</div>
