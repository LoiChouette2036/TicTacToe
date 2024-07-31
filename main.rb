require_relative 'board'
require_relative 'player'
require_relative 'game'

game = Game.new
game.start

loop do 
    game.who_is_playing?
    game.write_down_user_input
    game.check_winner

    if @player1.number_of_win == 3
        puts "Player 1 won !!"
        break
    elsif @player2.number_of_win == 3
        puts "Player 2 won"
        break
    else
        puts "player 1 has #{@player1.number_of_win} win and player 2 has #{@player2.number_of_win} win, keep going"
    end
end

