module TicTacToe
  require 'matrix'

  class Player
    attr_reader :name, :marker

    def initialize(name, marker)
      @name = name
      @marker = marker
    end
  end

  class Board 
    attr_accessor :board, :players

    def initilise
      @board = Matrix.rows([
        ['', '', ''],
        ['', '', ''],
        ['', '', '']
      ])

      @players = []
    end
  end
end

