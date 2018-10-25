@push('stylesheets')
<!-- Page Style -->
<link href="{{ asset('css/frontend/project/partials/item-add.css') }}" rel="stylesheet">
@endpush

<div class="project-add-item" style="border: 2px solid #E0E0E0;border-radius: 8px;">
  <div class="project-image">
    <a href="{{ route('project.create.pre') }}">+</a>
  </div>

  <!-- infos box -->
  <div class="project-infos-box">

    <!-- name -->
    <a href="{{ route('project.create.pre') }}"><h3>Create Your Own<br>Project</h3></a>

    <!-- summary -->
    <p>Be adventurous and develop your own group! Press on the + button to get started.</p>
  </div>
</div>
