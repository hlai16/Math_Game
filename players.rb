# this will be the Players class for both player1 and 2
# it has an instant var in initial of @lives = 3


class Player
    attr_accessor :lives, :name

    def initialize(lives, name)
        @name = name
        @lives = lives
    end

    def deduct_life
        @lives -= 1
    end

    def score_report
    end

end
