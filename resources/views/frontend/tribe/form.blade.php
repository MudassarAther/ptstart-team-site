<?php

/**
 * @author Dejan
 * @since  Sep 19, 2018
 */

use App\Models\Tribe;
use App\Models\Topic;
use App\Models\File;

?>

@push('scripts')
    <!-- Javascript Library -->
    <script src="{{ asset('plugins/jquery-form/dist/jquery.form.min.js') }}" defer></script>
    <script src="{{ asset('plugins/jcrop/js/jquery.Jcrop.min.js') }}" defer></script>
    <script src="{{ asset('js/helpers/fileinput.js') }}" defer></script>
    <script src="{{ asset('plugins/bs-maxlength/src/bootstrap-maxlength.js') }}" defer></script>
    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}" defer></script>
    <script src="{{ asset('js/frontend/tribe/form.js') }}" defer></script>

    <script type="text/javascript">
        var IMAGE_WIDTH  = {{ Tribe::IMAGE_WIDTH }};
        var IMAGE_HEIGHT = {{ Tribe::IMAGE_HEIGHT }};
    </script>
@endpush

@push('stylesheets')
    <!-- Plugin StyleSheets -->
    <link href="{{ asset('plugins/fileinput/css/bs-fileinput.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/jcrop/css/jquery.Jcrop.min.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/select2/dist/css/select2.min.css') }}" rel="stylesheet" />

    <!-- Form Style -->
    <link href="{{ asset('css/frontend/tribe/form.css') }}" rel="stylesheet">
@endpush

<div class="">
    <div class="page-title">{{ empty($tribe->id)?'New Tribe':'Edit Tribe' }}</div>

    <div class="card-body">
        <form id="tribe_create_form" action="{{ !empty($tribe->id)?route('tribe.detail.edit', ['id' => $tribe->id]):route('tribe.create') }}" method="post">
            @csrf

            <!-- Name -->
            <div class="form-group">
                <label for="tribe_title" class="label-tribe-name">{{ trans('<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>.tribe.name') }}</label>
                <input type="text" class="form-control input-tribe-name" id="tribe_title" name="tribe[title]" placeholder="Name" required value="{{ $tribe->title }}">
            </div>

            <!-- Description -->
            <div class="form-group">
                <label for="tribe_description" class="label-tribe-summary">{{ trans('<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>.tribe.summary') }}</label>
                <textarea class="form-control maxlength-handler input-tribe-summary" id="tribe_description" name="tribe[description]" placeholder="Summary" required rows="3" maxlength="1500">{{ $tribe->description }}</textarea>
            </div>

            <!-- Location -->
            <div class="form-group">
                <label for="tribe_location_id" class="label-tribe-location">{{ trans('<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>.tribe.location') }}</label>
                <select class="form-control custom-select w-25 input-tribe-location" id="tribe_location_id" name="tribe[location_id]" required style="width: 150px;">
                  <option value="{{ $tribe->location_id }}" selected="selected">{{ $tribe->location->name }}</option>
                </select>
            </div>

            <!-- Topic -->
            <div class="form-group">
                <label for="tribe_topic_id" class="d-block label-tribe-topic">{{ trans('<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>.tribe.topic') }}</label>
                <select class="form-control custom-select w-25 input-tribe-topic" id="tribe_topic_id" name="tribe[topic_id]" required>
                    <option value="0">Choose a topic</option>
                    @foreach (Topic::all() as $topic)
                    <option value="{{ $topic->id }}" {{ $tribe->topic_id == $topic->id?'selected':'' }}>{{ $topic->name }}</option>
                    @endforeach
                </select>
            </div>

            <!-- Image -->
            <div class="form-group">
                <label class="control-value-avatar label-tribe-cover">{{ trans('<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>.tribe.image') }}</label>
                <div class="file-upload-confileinputtainer">
                    <div class="fileinput-new" data-provides="fileinput">
                        <span class="btn btn-success green btn-file">
                            <span class="fileinput-new "><i class="icon-cloud-upload"></i>&nbsp;&nbsp;Select Image</span>
                            <span class="fileinput-exists">Change</span>

                            <input type="file" id="image" class="form-control" name="attached_files"  {!! render_file_validation_options(File::TYPE_TRIBE) !!} />
                            <input type="hidden" name="file_ids">
                            <input type="hidden" name="file_type" value="{{ File::TYPE_TRIBE }}" />
                        </span>
                        <a href="javascript:;" class="close fileinput-exists" data-dismiss="fileinput"></a>&nbsp;&nbsp;&nbsp;
                    </div>
                </div>
                <div id="temp_image" class="mt-2">
                    @if ($tribe->image())
                    <img src="{{ file_url($tribe->image(), 'get', 'thumb') }}" class="temp-image rounded" />
                    @endif
                </div>
            </div>

            @if (!$tribe->isOwner())
                <!-- Membership -->
                @if (empty($tribe->id) && !$user->subscribed($plan->stripe_id))
                    <div class="row pb-3">
                        <div class="col-md-7">{{ $plan->name }}</div>
                        <div class="col-md-5 text-right">
                            @if (!$user->subscribed($plan->stripe_id))
                                <button type="button" class="btn btn-outline-primary" data-plan-id="{{ $plan->id }}" data-action="CREATE" data-toggle="modal" data-target="#model_join_stripe_plan"><i class="fa fa-sign-in-alt"></i>&nbsp;&nbsp;Join</button>
                            @elseif ($user->subscription($plan->stripe_id)->cancelled())
                                <button type="button" class="btn btn-outline-success"  data-plan-id="{{ $plan->id }}" data-action="RESUME"><i class="fa fa-play"></i>&nbsp;&nbsp;Resume</button>
                            @else
                                <button type="button" class="btn btn-outline-danger"  data-plan-id="{{ $plan->id }}" data-action="CANCEL"><i class="far fa-pause-circle"></i>&nbsp;&nbsp;Cancel</button>
                            @endif
                        </div>
                    </div>
                @endif
            @endif

            <!--@if ($user->subscribed($plan->stripe_id))-->
                <button type="submit" class="btn btn-save">{{ !empty($tribe->id)?'Save':'Create' }}</button>
                <a href="{{ route('tribe.list') }}" class="btn btn-cancel">Cancel</a>
            <!--@endif-->

            <input type="hidden" name="x1" class="x1" />
            <input type="hidden" name="y1" class="y1" />
            <input type="hidden" name="width" class="w" />
            <input type="hidden" name="height" class="h" />
        </form>
    </div>
</div>

@include('frontend.payment.stripe')
