module MasterMind
  # Game Class
  class Game
    def initialize
      @guesses = 12
      @code = Code.New
    end
  end

  # PLayer Class
  class Player
  end

  # Hints Class
  class Hints
  end

  # Code Class
  class Code
    def initialize
      @code = Array.new(4) { rand(1..6) }
    end

    def correct_guess?(guess)
      @code.eql? guess
    end
  end
end
