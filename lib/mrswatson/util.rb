module MrsWatson
  class Util
    def initialize()
      @command = ["mrswatson"]
    end
    
    def list_plugins
      @command << "--list-plugins"
      system("#{@command.join(" ")}")
    end

    def version
      @command << "-v"
      system("#{@command.join(" ")}")
    end

    
  end
end