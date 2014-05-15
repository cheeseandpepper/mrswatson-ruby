module MrsWatson
  class IO
    attr_accessor :io
    def initialize
      @io = []
    end
    def set_input(input)
      if input[-3..-1] == "mid"
        @io << "-m #{input}"
      elsif input[-3..-1] == "wav"
        @io << "-i #{input}"
      else
        raise "Invalid Input Dude! - must be .wav or .mid"
      end
    end
    

    def set_output(output)
      @io << "-o #{output}"
    end
  end
end