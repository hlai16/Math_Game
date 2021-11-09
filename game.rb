# this is the outer most shell of the app that holds coordinating the switching from player 1 to player 2

# event listening on when player finishes answering questions, and then make the switch to the next player

require './players'
require './questions'

class Game
    def initialize
        @player1 = Player.new(3, 'Player1')
        @player2 = Player.new(3, 'Player2')
    end
    def start
        current_player = @player1
        while continued_game?
            puts "Player1: #{@player1.lives} Player2: #{@player2.lives}"
            puts current_player.name
            @question = Question.new
            @question.ask(current_player)
            puts current_player.lives
            if current_player == @player1
                current_player = @player2
            else
                current_player = @player1
            end
        end
        if @player1.lives > 0
            puts "#{@player1.name} wins!"
        else 
            puts "#{@player2.name} wins!"
        end
    end
    def continued_game?
        if @player1.lives == 0 || @player2.lives == 0
            return false
        else
            return true
        end
    end
end


