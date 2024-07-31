class Board
    def initialize 
        @board = Array.new(9, "a")
    end

    def display ()
        @board.each_with_index do |element,index|
            print "#{element} "
            if (index +1) % 3 == 0
                print "\n"
                print "---------\n" unless index == 8 #prevent to add a line is the last row
            end
        end
    end

end

board = Board.new
board.display

