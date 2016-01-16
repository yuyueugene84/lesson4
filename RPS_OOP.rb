class Player
  def initialize(name)
    @name = name
  end 
end

# 人類玩家的類別
class Human < Player
  def get_gesture
    input = gets.chomp
  end
end

# 電腦的類別
class Computer < Player
  def get_gesture
  	input = ['R', 'P', 'S'].shuffle!.last
  end
end


class RPS
  def intro
    #印出開場畫面，告訴玩家遊戲規則
  end

  def decide
    #邏輯判斷式
  end

  def get_player_gestures
    #取得玩家和電腦兩個物件的
  end

  def continue?
    #判斷玩家是否要繼續下一輪
  end

  def show_message
    #印出結果
  end
end

# ------------Main Program Starts Here ---------------------
# 主程式只要一行即可
game = RPS.new
