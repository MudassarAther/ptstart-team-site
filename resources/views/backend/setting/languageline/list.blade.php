<?php

/**
 * @author Dejan
 * @since  Oct 1, 2018
 */
?>

@extends('backend.layouts.app')

@push('stylesheets')
<!-- inline editable -->
<link href="{{ asset('plugins/bootstrap3-editable-1.5.1/bootstrap3-editable/css/bootstrap-editable.css') }}" rel="stylesheet">
@endpush

@push('scripts')
<!-- DataTables JavaScript -->
<script src="{{ asset('backend/vendor/datatables/js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('backend/vendor/datatables-plugins/dataTables.bootstrap.min.js') }}"></script>
<script src="{{ asset('backend/vendor/datatables-responsive/dataTables.responsive.js') }}"></script>

<!-- inline editable -->
<script src="{{ asset('plugins/bootstrap3-editable-1.5.1/bootstrap3-editable/js/bootstrap-editable.js') }}"></script>

<!-- Page-Level Scripts - inline editable -->
<script src="{{ asset('js/backend/setting/languageline/list.js') }}"></script>

<script>
$(document).ready(function() {
 $('#dataTables-example').DataTable({
     responsive: true
 });

  $.ajaxSetup({
      headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
  });
});
</script>
@endpush

@section('content')
<div id="page-wrapper">

  <!-- header -->
  <div class="row">
      <div class="col-lg-12">
          <h1 class="page-header">Sentences, Terms on Site</h1>
      </div>
  </div>
  <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-default">

        <!-- header -->
        <div class="panel-heading">
            Users
        </div>
        <div class="panel-body">
          <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
            <thead>
              <tr>
                  <th>Content</th>
                  <th>-</th>
              </tr>
            </thead>
            <tbody>
              @forelse ($languagelines as $line)
              <?php
                $key = $line->key;
                $obj = json_decode($line->text);
                $en = $obj->en;
              ?>
              <tr class="odd gradeX">
                <td><a href="#" id="lang-line-text-{{ $line->id }}" data-type="text" data-pk="{{ $line->id }}" data-url="{{ route('ajax.admin.languageline.edit') }}" data-title="Enter text" data-name="{{ $key }}"><?php echo $en ?></a></td>
                <td>-</td>
              </tr>
              @empty
                No Data
              @endforelse
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>


@endsection
