class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def padding num
    if num < 10
      return "0#{num}"
    else
      return "#{num}"
    end
  end

  def time_string
    
    hours = (@seconds / 3600)
    minutes = (@seconds / 60) % 60
    seconds = (@seconds) % 60
    return "#{padding(hours)}:#{padding(minutes)}:#{padding(seconds)}"
    
  end
end



