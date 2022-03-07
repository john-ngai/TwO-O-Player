# Pair Programming Partners: Mikiyoshi Kokura & John Ming

class Player
  def initialize(name)
    @NAME = name
    @lives = 3
  end
  
  def name
    return @NAME
  end

  def lives
    return @lives
  end

  def decrease_live
    return @lives -= 1
  end

  def next_turn(current_player, player1, player2)
    if current_player == player1
      return player2
    elsif current_player == player2
      return player1
    end
  end
end

class Questions
  def check_answer(answer, solution)
    if (answer == solution)
      return true
    else
      return false
    end
  end
  
  def new_question(player, num1, num2)
    puts "-----NEW TURN-----"
    puts "#{player}: What is #{num1} x #{num2}?"
    print "> "
    return $stdin.gets.chomp.to_i 
  
  end
end

class Games
  def initialize(player1, player2)
    @PLAYER1 = player1
    @PLAYER2 = player2
  end

  def select_first_player
    if rand(2) == 0
      return @PLAYER1
    else
      return @PLAYER2
    end
  end

  def check_winner(player1, player2)
    if player1.lives == 0
      puts "#{player2.name} is the winner with #{player2.lives} life/lives remaining."
    elsif player2.lives == 0
      puts "#{player1.name} is the winner with #{player1.lives} life/lives remaining."
    end
  end

  def start
    @player_turn = select_first_player
    
    while @PLAYER1.lives > 0 && @PLAYER2.lives > 0
      @num1 = rand(1..5)
      @num2 = rand(1..5)
      @solution = @num1 * @num2

      round = Questions.new
      @answer = round.new_question(@player_turn.name, @num1, @num2)
    
      if round.check_answer(@answer, @solution)
        puts "Correct!" 
      else
        puts "Wrong answer!!"
        @player_turn.decrease_live
      end

      puts "#{@PLAYER1.name} #{@PLAYER1.lives} of 3 lives remaining."
      puts "#{@PLAYER2.name} #{@PLAYER2.lives} of 3 lives remaining."

      @player_turn = @player_turn.next_turn(@player_turn, @PLAYER1, @PLAYER2)
    end

    check_winner(@PLAYER1, @PLAYER2)
  end
end

player1 = Player.new("Miki Kokura")
player2 = Player.new("John")

new_game = Games.new(player1, player2)
new_game.start