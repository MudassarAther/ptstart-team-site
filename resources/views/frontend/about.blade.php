@extends('layouts.app')

@push('scripts')
    <!-- Javascript Library -->
    <script src="{{ asset('plugins/owlcarousel2/dist/owl.carousel.min.js') }}" defer></script>

    <!-- Page Javascript -->
    <script src="{{ asset('js/frontend/about.js') }}" defer></script>
@endpush

@push('stylesheets')
    <!-- Plugin StyleSheets -->
    <link href="{{ asset('plugins/owlcarousel2/dist/assets/owl.carousel.min.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/owlcarousel2/dist/assets/owl.theme.default.min.css') }}" rel="stylesheet">

    <!-- Page StyleSheets -->
    <link href="{{ asset('css/frontend/about.css') }}" rel="stylesheet">
@endpush

@section('content')
<div class="container about-main">
<h1>About FutureSmith</h1>
<h3><strong>Future Smith</strong> is a national online network of self-organising volunteering groups. We make it easy for you to find and create meaningful volunteering activities. </h3>
<h2>How do we help you?</h2>
<p>On <strong>Future Smith</strong> you can join existing groups or you can start your own unique group. The platform enables your group to create and manage your own volunteering projects; what, where, how and who is up to you! We know you have a wealth of experience from your decades in the workforce and life knowledge to share. You’re the one with skills and networks, and now you’re the one with the time to use that power. We’ll help you harness that power for the greatest outcome.</p>
<ul>
  <li>Find others: Access to a network of willing volunteers like you.</li>
  <li>Join others: Finding the right volunteering journey for you</li>
  <li>Project management resources</li>
  <li>Templates and suggestions for volunteering</li>
  <li>Reassurance about volunteering liability and legal structures</li>
  <li>Monthly face-to-face meeting with the Future Smith team to help kick-start your volunteering project</li>
  <li>Online help when needed through chat function</li>
</ul>

<h2>Vision</h2>
<p>At <strong>FutureSmith</strong> our vision is to have every Australian Baby Boomer engaged in volunteering roles that feel meaningful, interesting and flexible.</p>

<h2>Mission Statement</h2>
<p>We hand you the power and control over your volunteer participation.<br>
You are the leader of your own volunteering journey.</p>

<h2>Values</h2>
<p>Re-invention<br>
Personalisation<br>
Leadership<br>
Connection<br>
Spirit</p>

<h2>About the people</h2>
<p>Future Smith was established in early 2017 with Jacqui Storey and Minseok Song at the helm. The concept of the organisation is rooted in research by Flinders University and the South Australian Health and Medical Research Institute, as well as many other supporting sources of research and testing.
Jacqui Storey is the founder and leader. As well as founding this organisation she plays a crucial role in elder consumer advocacy through her work at COTA Australia.</p>

<p>Valued team members</p>
<div id="members" class="owl-carousel owl-theme">
  <div class="item"><img src="{{ asset('images/about/Jacqui.jpeg') }}" /></div>
  <div class="item"><img src="{{ asset('images/about/Filip.jpeg') }}" /></div>
  <div class="item"><img src="{{ asset('images/about/Anisha.png') }}" /></div>
  <div class="item"><img src="{{ asset('images/about/Aaron.jpeg') }}" /></div>
  <div class="item"><img src="{{ asset('images/about/John.jpeg') }}" /></div>
  <div class="item"><img src="{{ asset('images/about/Rachel.jpeg') }}" /></div>
</div>
@endsection
