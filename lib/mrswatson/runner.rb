module MrsWatson
  class Runner
    attr_accessor :plugin_chain, :io, :options
    def initialize(io, plugin_chain, options="")
      @command_chain = []
      @plugin_chain = plugin_chain.plugin_chain
      @io = io.io
      @options = options
      @command_chain << @io << @plugin_chain
    end

    def sanitize
      @sanitized_chain = @command_chain.flatten.join(" ").gsub("-p ", "-p '").gsub("; ", ";") << "'"
    end

    def run
      #puts "#{@sanitized_chain}"
      system("mrswatson #{@sanitized_chain}")      
    end

  end
end