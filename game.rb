class Game
    def initialize
        @board = Board.new
        @player1 = Player.new("Player 1", "X")
        @player2 = Player.new("Player 2", "O")
    end

    def player1
        @player1
    end
      
    def player2
        @player2
    end

    def start 
        @board.display 
        puts "Let's the game begin !!!"
    end

    def who_is_playing?
        valid_choices = [1,2]
        choice = nil

        until valid_choices.include?(choice)
            print "Player Number, Please choose between 1 and 2  "
            choice = gets.chomp.to_i
        end

        user_input = choice

        @current_player = user_input == 1 ? @player1 : @player2
    end

    def choose_position        
        valid_choices = [1,2,3,4,5,6,7,8,9]
        choice = nil

        until valid_choices.include?(choice)
            print "Choose between from 1 to 9, where you want to tick your marker : "
            choice = gets.chomp.to_i
        end
        @position_wanted = choice
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

        winning_combinations = [
            [0, 1, 2],[3, 4, 5], [6, 7, 8],
            [0, 3, 6], [1, 4, 7], [2, 5, 8],
            [0, 4, 8], [2, 4, 6]
        ]
        
        winning_combinations.each do |combination|
            if combination.all?{|index| @board[index] == @current_player.marker}
                puts "Player #{@current_player.marker == 'X'?1:2} has won"
                @current_player.number_of_win +=1            
                
                return true
            else
                return false
            end
        end

    end       

    def display_new_board 
        if @board.no_empty_slots?
            puts "Y en plus"
        else
            winner = check_winner # Call check_winner once and store the result
            if winner == true
                @board = Board.new
            else
                puts"continue this game"
            end
        end
    end
end


####CHATGPT improvment#######
#class Game
    # Existing methods...

#    def check_winner
#        if @board.check_winner(@current_player.marker)
#            puts "Player #{@current_player.marker == 'X' ? 1 : 2} has won"
#            @current_player.number_of_win += 1            
#            true
#        else
#            false
#        end
#    end
#end
