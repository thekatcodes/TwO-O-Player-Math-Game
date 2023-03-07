# Checks players' names and lives

class Players
    def Initialize(name)
        @name = name
        @lives = 3
    end
# method to remove lives 
    def lose_life
        self.lives -= 1
    end

end