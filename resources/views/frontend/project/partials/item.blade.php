<div class="project-item">
  <div class="project-image">
    <span>Good Match</span>
    <!-- project cover image -->
    <a href="{{ $project->link() }}"><img src="{{ file_url($project->image(), 'get', 'thumb') }}"></a>
  </div>

  <!-- project infos box -->
  <div class="project-infos-box">

    <!-- project name -->
    <h3><a href="{{ $project->link() }}">{{ substr($project->title, 0, 100) }}</a></h3>

    <!-- project summary -->
    <p>{{ substr($project->description, 0, 100) }}</p>

    <!-- project volunteers -->
    <div>{{ $project->members }} Volunteers from 3 Tribes</div>
    <div>{{ $project->location->name }}</div>
    <div>2 Nov 2017 – 2 Feb 2018 (ongoing)</div>
  </div>
</div>
