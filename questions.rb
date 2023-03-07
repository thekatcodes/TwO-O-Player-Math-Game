class Questions
    def Initialize
        @random_number1 = rand(1..20)
        @random_number2 = rand(1..20)
        @answer = self.random_number1 + self.random_number2
        @player_answer
    end

def question
    puts "What is #{self.random_number1} + #{self.random_number2} equal to?"
    self.player_answer = gets.chomp.to_i
end

# check if player answer is the same as the answer
def check_answer?
    self.player_answer == self.answer
end

end