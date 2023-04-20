require './player'
require './question'

class Game
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def play
    while (@player1.lives > 0) && (@player2.lives > 0) do
      question = Question.new
      puts "#{@current_player}: #{question}"
      print '> '
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "#{@current_player}: YES! You are correct."
      else
        puts "#{@current_player}: Seriously? No!"
        @current_player.lose_life
      end

      puts "#{@player1} vs. #{@player2}"
      puts '--------NEW TURN--------'

      switch_player
    end

    puts "#{winner} wins with a score of #{winner.lives}/3"
    puts '--------GAME OVER-------'
    puts 'Good bye!'
  end

  private

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def winner
    (@player1.lives > 0) ? @player1 : @player2
  end
end
