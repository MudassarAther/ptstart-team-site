
<?php

/**
 * @author Dejan
 * @since  Sep 24, 2018
 */

?>

@push('scripts')
    <!-- Javascript Library -->
    <script src="{{ asset('js/helpers/alert.js') }}" defer></script>

    <!-- Page Javascript -->
  <script src="{{ asset('js/frontend/discussion/partials/list.js') }}"></script>
@endpush

@push('scripts')
<link href="{{ asset('css/frontend/discussion/partials/list.css') }}" rel="stylesheet">
@endpush

<div class="discussion-list">
  <form id="discussion_create_form" action="{{ route('discussion.create') }}" method="post">
    @csrf
    <!-- post create text box -->
    <input type=text class="post-input" placeholder="Post something to the group..." name="discussion_title" required/>
    <a data-type="{{ $type }}" data-ref_id="{{ $ref_id }}" class="float-right add-discussion-link"><i class="icon-plus"></i></a>
    <input type="hidden" name="type" />
    <input type="hidden" name="ref_id" />
  </form>
  @forelse ($discussions as $discussion)
  <div class="discussion-item">
    <div class="post-date">{{ $discussion->created_at }}</div>
    <div class="post-user">{{ $discussion->user->profile->name }}</div>
    <a href="{{ route('discussion.detail.edit', ['id' => $discussion->id, 'type' => !empty($type) ? $type : '', 'ref_id' => !empty($ref_id) ? $ref_id : '']) }}">Edit</a>
    <a class="delete-discussion" data-discussion-id="{{ $discussion->id }}" href="#">Delete</a>
    <div class="post-title">{{ $discussion->title }}</div>
    <div class="post-summary">{{ $discussion->description }}</div>
  </div>
  @empty
  <div class="">No Discussions</div>
  @endforelse
</div>
