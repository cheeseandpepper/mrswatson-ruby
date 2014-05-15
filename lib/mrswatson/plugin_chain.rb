module MrsWatson

  class PluginChain
    attr_accessor :plugin_chain
    
    def initialize()
      @plugin_chain = ["-p"]
    end

    def add_instrument(instrument, fxp="")
      if fxp == ""
        @plugin_chain << "#{instrument};"
      else
        @plugin_chain << "#{instrument},#{fxp};"
      end
    end


    def add_effect(effect, fxp="")
      if fxp == ""
        @plugin_chain << "#{effect};"
      else
        @plugin_chain << "#{effect},#{fxp};"
      end
    end

    def sanitize
      @plugin_chain.flatten.join(" ").gsub("-p ", "-p '").gsub("; ", ";") << "'"
    end

  end

end