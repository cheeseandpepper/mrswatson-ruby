module MrsWatson

  class PluginChain
    attr_accessor :plugin_chain
    
    def initialize()
      @plugin_chain = ["-p"]
    end

    def add_instrument(instrument, fxp="")
      @plugin_chain << "#{instrument}"; fxp == "" ? ";" : ",#{fxp};"
    end

    def add_effect(effect, fxp="")
      @plugin_chain << "#{effect}"; fxp == "" ? ";" : ",#{fxp};"
    end

    def sanitize
      @plugin_chain.flatten.join(" ").gsub("-p ", "-p '").gsub("; ", ";") << "'"
    end

  end

end