class Game
    def initialize
        @board = Board.new
        @player1 = Player.new("Player 1", "X")
        @player2 = Player.new("Player 2", "O")
    end

    def start 
        @board.display 
        puts "Let's the game begin !!!"
    end

    def who_is_playing?
        print "who's playing ?"
        user_input = gets.chomp.to_i

        if user_input == 1 
            @current_player = @player1
        else
            @current_player = @player2
        end
    end
    
    def choose_position        
        print "Choose between from 1 to 9, where you want to tick your marker"
        @position_wanted = gets.chomp.to_i
        puts "You entered the number: #{@position_wanted}"
    end

    def write_down_user_input
        loop do
            choose_position
            if @board[@position_wanted-1] == ""
                @board[@position_wanted-1] = @current_player.marker
                @board.display
                return true
            else
                puts "you can not play there, retry an other place please"
            end
        end
    end

    def check_winner
        if ([@board[0],@board[1],@board[2]].all? {|element| element == @board[0]} || [@board[3],@board[4],@board[5]].all? {|element| element == @board[3]} || [@board[6],@board[7],@board[8]].all? {|element| element == @board[6]} || [@board[0],@board[4],@board[8]].all? {|element| element == @board[0]} || [@board[2],@board[4],@board[6]].all? {|element| element == @board[2]})
            puts "someone has won"
            if element == "X"
                puts "player1 has won"
                @player1.number_of_win += 1
            else
                puts "player 2 has won"
                @player2.number_of_win += 1
            end
        else
            puts "nobody won"
        end
    end       
        
end
