[![Code Climate](https://codeclimate.com/github/cheeseandpepper/mrswatson-ruby.png)](https://codeclimate.com/github/cheeseandpepper/mrswatson-ruby)

# MrsWatson Ruby Gem



## Installation

First you MUST have MrsWatson installed. Visit http://teragonaudio.com/MrsWatson.html to install it.

From the command line, type

  <pre><code>$ gem install mrswatson</code></pre>

## Usage

This is a simple wrapper for MrsWatson, a command line vst host. Not all features are supported at this time but hopefully soon. This is an early release to get it out there and get feedback. For now this is OS X only, but that should change soon as well.


Step 1:

  <pre><code>
    io = MrsWatson::IO.new()
    io.set_input("path/to/input")
    io.set_output("path/to/output")
  </code></pre>

The input file must be .mid or .wav depending on usage. The output is optional and will make use of MrsWatsons default output if none is specified.

Step 2:

  <pre><code>
    plugin_chain = MrsWatson::PluginChain.new()
    plugin_chain.add_instrument("VSTi Name", "optional.FXP")
    plugin_chain.add_effect("VST Name", "optional.FXP")
  </code></pre>

Next you specify your plugin chain. If processing a midi file, you must include a VSTi to render the sound. For now only FXP files are supported to set the instrument settings. You can optionally chain as many effects as you want. The order in which you chain the effects is the order in which they will process.


Step 3:


  <pre><code>
    mrswatson = MrsWatson::Runner.new(io, plugin_chain)
    mrswatson.sanitize
    mrswatson.run
  </code></pre>


The Runner class is what executes the program. It takes in the previously defined IO instance and PluginChain instance. It is strongly recommended (if not required) that you sanitize the instance before running it. I should probably refactor this to be part of the run method. Soon...


Additionally you can use the Util class

  <pre><code>
    util = MrsWatson::Util.new()
    util.version
    util.plugin_list
  </code></pre>

The Util class currently supports version, and plugin_list which will give you the MrsWatson version installed and the list of plugins you have installed respectively. More Util methods to come in the future.

## Contributing

1. Fork it ( http://github.com/cheeseandpepper/mrswatson/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
