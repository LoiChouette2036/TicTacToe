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

end


