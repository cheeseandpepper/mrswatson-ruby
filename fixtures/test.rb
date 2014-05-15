require_relative 'runner'
require_relative 'plugin_chain'
require_relative 'util'
require_relative 'io'

plugin_chain = MrsWatson::PluginChain.new()
io = MrsWatson::IO.new
io.set_input("test.mid")
io.set_output("MIKE.wav")


# version = MrsWatson::Util.new()
# version.list_plugins


plugin_chain.add_instrument("sforzando", "sforzando.fxp")
plugin_chain.add_effect('Guitar Rig 4', "guitarrig4.FXP")
plugin_chain.sanitize
#puts plugin_chain.sanitize

# mrswatson.add_input("test.mid")
# mrswatson.add_output('mrswatson.wav')
# mrswatson.add_instrument("sforzando", "sforzando.FXP")
# #mrswatson.add_fxp("sforzando.FXP")
# mrswatson.add_effect('Guitar Rig 4', "guitarrig4.FXP")
# #mrswatson.add_fxp('guitarrig4.FXP')

mrswatson = MrsWatson::Runner.new(io, plugin_chain)
mrswatson.sanitize
mrswatson.run