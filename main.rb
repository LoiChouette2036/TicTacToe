require_relative 'board'
require_relative 'player'
require_relative 'game'

game = Game.new
game.start

loop do 
    game.who_is_playing?
    game.write_down_user_input
    game.display_new_board
    
    if game.player1.number_of_win == 3
        puts "Player 1 won !!!!!"
        break
    elsif game.player2.number_of_win == 3
        puts "Player 2 won !!!!!"
        break
    else
        puts "Player 1 has #{game.player1.number_of_win} win and Player 2 has #{game.player2.number_of_win} win, keep going"
    end

    puts game.player1.number_of_win
    puts game.player2.number_of_win

end

