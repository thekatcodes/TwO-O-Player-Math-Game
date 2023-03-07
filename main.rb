require "./players"
require "./questions"

class Game 
    attr_accessor :player1, :player2, :current_player, :question, :winner

    def initialize ()
        puts "Welcome to TwO-O-Player Math game! Let's test your knowledge!"
        @player1 = Players.new('Gordon')
        @player2 = Players.new('Ramsay')
        @current_player = self.player1
        @question = Questions.new()
        @winner = false
    end

    def play()
        while !self.winner do
            puts "----- NEW TURN -----"
            puts "#{self.current_player.name}, your turn!"
            self.question.question

            # check answer, if true -> continue, if false -> lose 1 life 
            if self.question.check_answer? then
                puts "Correct :)"
            else 
                puts "Wrong answer :("
                self.current_player.lose_life
                puts "#{self.player1.name}: #{self.player1.lives}/3 vs #{self.player2.name}: #{self.player2.lives}/3"
            end

            # check player lives, if 0 -> set winner to true
            if self. current_player.lives == 0
                puts "#{self.current_player.name}, you lost..."
                self.winner = true
                if self.current_player == self.player1 then
                    puts "#{self.player2.name} wins with a score of #{self.player2.lives}/3"
                else 
                    puts "#{self.player1.name} wins with a score of #{self.player1.lives}/3"
                end
                puts "----- GAME OVER -----"
                puts "Thanks for playing!"
            end

            # initiate new question
            self.question = Questions.new()

            # add toggle between player 1 and player 2 after each round
            if self.current_player == self.player1 then
                self.current_player = self.player2
            else 
            self.current_player = self.player1
            end
        end
    end
end

Game.new().play()
        