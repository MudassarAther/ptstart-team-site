<div class="tribe-item">
  <div class="tribe-image">
    <div class="mark"><span>{{ $tribe->members()->count() }}<br>members</span></div>
    <!-- tribe cover image -->
    <a href="{{ $tribe->link() }}"><img src="{{ file_url($tribe->image(), 'get', 'thumb') }}"></a>
  </div>

  <!-- tribe infos box -->
  <div class="tribe-infos-box p-3">

    <!-- tribe name -->
    <h3><a href="{{ $tribe->link() }}">{{ substr($tribe->title, 0, 100) }}</a></h3>

    <!-- tribe summary -->
    <p>{{ substr($tribe->description, 0, 100) }}</p>

    <!-- tribe location -->
    <div class="tribe-location">
      <i class="fa fa-map-marker-alt"></i>
      {{ $tribe->location->name }}
    </div>
  </div>
</div>
