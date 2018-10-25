<?php

use Illuminate\Database\Seeder;
use Spatie\TranslationLoader\LanguageLine;

class LanguageLinesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // home
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.t1',
          'text' => ['en' => 'Future Smith makes volunteering more satisfying.
This is your digital platform for mobilising your volunteer group. You are in control of your volunteering journey.
We empower volunteers to run their own projects and we do all that we can to help them make a good impact!'],
        ]);

        // home, how it works
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.how1',
          'text' => ['en' => 'Join Tribes where people<br>have similar skills as you.'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.how2',
          'text' => ['en' => 'Explore ongoing projects &amp;<br>participate in the ones that<br>interest you.'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.how3',
          'text' => ['en' => 'Contribute your skills.<br>Make a difference one project<br>at a time.'],
        ]);

        // home, hear
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear1',
          'text' => ['en' => 'Hear from some Future Smithers'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-a1',
          'text' => ['en' => 'Bob Marley'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-a2',
          'text' => ['en' => 'Started the TechTime Project'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-a3',
          'text' => ['en' => 'The LASIK surgeon uses computer software to guide the IntraLase laser beam, which applies a series of tiny (3-micron-diameter) bubbles within the central layer of the cornea. '],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-b1',
          'text' => ['en' => 'Bob Marley'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-b2',
          'text' => ['en' => 'Started the TechTime Project'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.hear-b3',
          'text' => ['en' => 'The LASIK surgeon uses computer software to guide the IntraLase laser beam, which applies a series of tiny (3-micron-diameter) bubbles within the central layer of the cornea. '],
        ]);

        // home, participate
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.part1',
          'text' => ['en' => 'You can join one of our many ongoing projects'],
        ]);

        // home, join tribe
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'home.join-tribe1',
          'text' => ['en' => 'Meet like-minded people in Tribes or groups around you'],
        ]);

        // tribe create
        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'tribe.name',
          'text' => ['en' => 'Name of your tribe'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'tribe.summary',
          'text' => ['en' => 'Summary'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'tribe.location',
          'text' => ['en' => 'Location'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'tribe.topic',
          'text' => ['en' => 'What is your topic?'],
        ]);

        LanguageLine::create([
          'group' => '<span id="result_box" class="short_text" lang="en"><span class="">message</span></span>',
          'key' => 'tribe.image',
          'text' => ['en' => 'Upload a cover image'],
        ]);
    }
}
