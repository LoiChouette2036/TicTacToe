class Board
    def initialize 
        @board = Array.new(9, "")
    end

    # Define the [] method to access the board array
    def [](index)
        @board[index]
    end

    # Define the []= method to set a value on the board array
    def []=(index, value)
        @board[index] = value
    end

    def display ()
        @board.each_with_index do |element,index|
            print " #{element} | "
            if (index +1) % 3 == 0
                print "\n"
                print "--------------\n" unless index == 8 #prevent to add a line is the last row
            end
        end
    end

    def full?
        @board.all? { |element| element != "" }
        return true
    end

    def no_empty_slots?
        @board.none? { |element| element == "" }
    end


end

##chatgpt improvment###

#class Board
    # Existing methods...

#    def check_winner(marker)
#        winning_combinations = [
#            [0, 1, 2], [3, 4, 5], [6, 7, 8],
#            [0, 3, 6], [1, 4, 7], [2, 5, 8],
##            [0, 4, 8], [2, 4, 6]
#        ]
#        
#        winning_combinations.any? do |combination|
#            combination.all? { |index| @board[index] == marker }
#        end
#    end
#end


