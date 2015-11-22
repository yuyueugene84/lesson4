class Player
  def initialize(name)
    @name = name
  end 
end

class Human < Player
  def get_gesture
    input = gets.chomp
  end
end

class Computer < Player
  def get_gesture
  	input = ['R', 'P', 'S'].shuffle!.last
  end
end


class RPS
  def intro
  end

  def decide
  end

  def get_player_gestures
  end

  def continue?
  end

  def show_message
  end
end


game = RPS.new