@extends('layouts.app')

@push('scripts')
    <!-- Javascript Library -->
    <script src="{{ asset('plugins/owlcarousel2/dist/owl.carousel.min.js') }}" defer></script>

    <!-- Page Javascript -->
    <script src="{{ asset('js/frontend/home.js') }}" defer></script>
@endpush

@push('stylesheets')
    <!-- Plugin StyleSheets -->
    <link href="{{ asset('plugins/owlcarousel2/dist/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Page StyleSheets -->
    <link href="{{ asset('css/frontend/home.css') }}" rel="stylesheet">
@endpush

@section('content')
<div class="future-main">
  <div class="header-row">
    <div class="row">
        <div class="col-12 col-md-6 text-center text-md-right pb-3 pb-md-0 header-left">
            <a href="#how-it-work" class="btn btn-outline-primary join-us-primary">Participate</a>
            <h3>Volunteer the way<br>YOU want to.</h3>
            <p>Future Smith allows you to apply your<br>skills and years of experience in a way<br>that matters.</p>
        </div>
    </div>
    <div class="arrow">
      <i class="fas fa-angle-down"></i>
    </div>
  </div>

  <div style="border-bottom: 1px solid #EEEEEE;box-sizing: border-box;background-color: #F7F1F2;">
    <div class="row bg-theme-gray p-3 how-it-work">
        <div class="col-12">
            <h2 class="font-weight-bold py-3 text-center"><a id="how-it-work">How it works</a></h2>
            <a href="#" class="learn-more">Learn More</a>
            <div class="row">
              <div class="col-1">
              </div>
              <div class="col-10">
                <div class="row">
                  <!-- step 1, register -->
                  <div class="col-12 col-md-4 text-center">
                    <div class="item">
                      <div class="header">
                        <span>01</span>
                        <h3>REGISTER</h3>
                      </div>
                      <p class="">Join Future Smith &<br>meet like-minded<br>people. Join Tribes<br>where people have<br>similar skills as you.</p>
                      <a href="{{ route('register') }}">SIGN UP</a>
                    </div>
                  </div>

                  <!-- step 2, explore tribes -->
                  <div class="col-12 col-md-4 text-center">
                    <div class="item">
                      <div class="header">
                        <span>02</span>
                        <h3>EXPLORE</h3>
                      </div>
                      <p class="">Explore ongoing projects<br>& partcipate in ones that<br>interest you.</p>
                      <a href="{{ route('tribe.list') }}">TRIBES</a>
                    </div>
                  </div>

                  <!-- step 3, contribute projects -->
                  <div class="col-12 col-md-4 text-center">
                    <div class="item">
                      <div class="header">
                        <span>03</span>
                        <h3>CONTRIBUTE</h3>
                      </div>
                      <p class="">Contribute using your<br>skills. Make a difference<br>one project at a time.</p>
                      <a href="{{ route('project.list') }}">PROJECTS</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        </div>
    </div>
  </div>
  <div class="intro-video-container">
    <iframe class="intro-video" src="https://www.youtube-nocookie.com/embed/K-8lqWEhycs?autoplay=1&rel=0&autohide=1&autopause=0&mute=1" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen=""></iframe>
  </div>
  <div class="hear-from">
    <div class="row">
      <div class="col-1">
      </div>
      <div class="col-10">
        <div class="row hear-contents">
          <div class="col-lg-4 first-content">
            <div class="hear-content">
              <span>,,</span>
              <h3>Bob Marley</h3>
              <h4>Started the TechTime Project</h4>
              <p>The LASIK surgeon uses computer software to guide the IntraLase laser beam, which applies a series of tiny (3-micron-diameter) bubbles within the central layer of the cornea. </p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="hear-content">
              <span>,,</span>
              <h3>Bob Marley</h3>
              <h4>Started the TechTime Project</h4>
              <p>The LASIK surgeon uses computer software to guide the IntraLase laser beam, which applies a series of tiny (3-micron-diameter) bubbles within the central layer of the cornea. </p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="hear-content">
              <span>,,</span>
              <h3>Bob Marley</h3>
              <h4>Started the TechTime Project</h4>
              <p>The LASIK surgeon uses computer software to guide the IntraLase laser beam, which applies a series of tiny (3-micron-diameter) bubbles within the central layer of the cornea. </p>
            </div>
          </div>
        </div> <!-- row hear contents -->
      </div> <!-- col-10 -->
    </div> <!-- row -->
  </div>

  <!-- tribes -->
  <div class="tribes-list">
    <h2>Tribes</h2>
    <h3>Meet like-minded people in 'tribes' or groups around you.</h3>

    <!-- project grid -->
    <div class="row">
      <div class="col-1">
      </div>
      <div class="col-10">
        @include ('frontend.tribe.partials.list')
      </div>
    </div>

    <!-- tribe see more -->
    <a href="{{ route('tribe.list') }}" class="see-more">See More</a>
  </div>

  <!-- projects -->
  <div class="projects-list">
    <h2>Projects</h2>
    <h3>You can join one of our many ongoing projects.</h3>

    <!-- project grid -->
    <div class="row">
      <div class="col-1">
      </div>
      <div class="col-10">
        @include ('frontend.project.partials.list')
      </div>
    </div>

    <!-- project see more -->
    <a href="{{ route('project.list') }}" class="see-more">See More</a>
  </div>

  <img style="width:100%;height:auto;margin-top:-100px;" src="{{ asset('images/footer/bg.png') }}" />
</div>

<footer class="future-footer">
  <div class="row">
    <div class="col-md-6">
      <div class="row">
        <div class="col-md-4">
          <h3>NEED HELP?</h3>
          <p>Call Us >  0123 456 789</p>
          <p>Email Us ></p>
          <a>General Inquiries ></a>
          <a>How to use the website ></a>
        </div>

        <div class="col-md-4">
          <h3>OFFERINGS</h3>
          <a>Create a Tribe ></a>
          <a>Join a Tribe ></a>
          <a>Create a Project ></a>
          <a>Join a Project ></a>
        </div>

        <div class="col-md-4">
          <h3>STORIES</h3>
          <a>Member of the month ></a>
          <a>My Account ></a>
          <a>Testimonials ></a>
          <a>Meet the team ></a>
        </div>
      </div>
    </div>
    <div class="col-md-6">
      <div class="row">
        <div class="col-md-6">
        </div>
        <div class="col-md-6">
          <div class="row">
            <img class="" src={{asset('images/footer/f.png')}} />
            <img class="" src={{asset('images/footer/in.png')}} />
            <img class="" src={{asset('images/footer/u.png')}} />
          </div>
          <div class="row">
            <img class="" src={{asset('images/footer/p.png')}} />
            <img class="" src={{asset('images/footer/t.png')}} />
            <img class="" src={{asset('images/footer/b.png')}} />
          </div>
        </div>
      </div>
    </div>
  </div>

  <div>
    <h2>Some of our past collaborators</h2>
  </div>
  <p>We have worked with several organisations in the aging an<br>volunteering sectors in the development of Future Smith.</p>
  <div class="ad">
    <img class="odd" src="{{ asset('images/home/footer-mark-1.png') }}" />
    <img class="even" src="{{ asset('images/home/footer-mark-2.png') }}" />
  </div>
  <h4>Future Smith 2018  |   All Rights Reserved</h4>
</footer>
@endsection

@section('footer')
@stop
