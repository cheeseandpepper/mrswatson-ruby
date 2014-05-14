module MrsWatson
  class Runner
    def initialize()
      @chain = []
    end

    def list_plugins
      @chain << "--list-plugins"
    end

    def add_input(input)
      if input[-3..-1] == "mid"
        @chain << "-m #{input}"
      elsif input[-3..-1] == "wav"
        @chain << "-i #{input}"
      else
        raise "Invalid Input Dude! - must be .wav or .mid"
      end
    end

    def add_output(output)
      @chain << "-o #{output}"
    end

    def version
      @chain << "-v"
    end

    def add_plugin(plugin)
      @chain << "-p #{plugin}"
    end

    def add_effect(effect)
      @chain << "-p #{effect}"
    end

    def run
      #puts final_chain
      system("mrswatson #{@chain.flatten.join(" ")}")
      
    end

  end
end