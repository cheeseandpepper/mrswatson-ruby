# MrsWatson Ruby Gem



## Installation

First you MUST have MrsWatson installed. Visit teragonaudio.com to install it.

From the command line, type

  <pre><code>$ gem install mrswatson</code></pre>

## Usage

This is a simple wrapper for MrsWatson, a command line vst host. Not all features are supported at this time but hopefully soon. This is an early release to get it out there and get feedback. For now this is OS X only, but that should change soon as well.

<pre><code>
  mrswatson = MrsWatson::Runner.new()
</code></pre>

The above will create a new MrsWatson object. For now everything is done through the Runner class but that could change soon.

<pre><code>
  mrswatson.add_input("my_midi.mid") // takes .mid or .wav files
  mrswatson.add_instrument("Kontakt 5")
  mrswatson.add_fxp("kontakt.FXP")
  mrswatson.add_effect("iZotope Trash 2")
  mrswatson.add_fxp("trash.FXP")
  mrswatson.add_output("my_output.wav") // optional

  mrswatson.run // this will execute the MrsWatson command.
</code></pre>



## Contributing

1. Fork it ( http://github.com/cheeseandpepper/mrswatson/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
