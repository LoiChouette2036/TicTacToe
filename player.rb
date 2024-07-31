class Player

    attr_accessor :number_of_win

    def initialize (name)
        @name = name
        @number_of_win = 0
    end

    def winner?
        if @number_of_win == 3 
            puts " I won the Game !"
            true
        else
            false
        end
    end
end



