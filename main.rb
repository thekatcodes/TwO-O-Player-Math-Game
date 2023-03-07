require "./players"
require "./questions"

class Game 
    def Initialize 
        puts "Welcome to TwO-O-Player Math game! Let's test your knowledge!"
        @player1 = Players.new('Gordon')
        @player2 = Players.new('Ramsay')
        @current_player = self.player1
        @question = Questions.new()
        @winner = false
    end

    def play


    end

end

        