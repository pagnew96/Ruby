# frozen_string_literal: true

module TicTacToe
  class Player
    attr_reader :name, :marker

    def initialize(name, marker)
      @name = name
      @marker = marker
    end
  end

  class Board
    require 'Matrix'

    attr_reader :board

    def initialize
      @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
    end

    def display_board
      puts '  A   B   C'
      @board.each_with_index do |row, index|
        puts "#{index} " << row.join(' | ')
        puts '  --+---+--' unless index == @board.size - 1
      end
    end

    def position_valid?(position)
      position.match?(/[A-C][0-2]/)
    end

    def update_board(position, marker)
      row = position[1].to_i
      column = position[0].ord - 65 # - 65 to get the index of the column
      @board[row][column] = marker
      display_board
    end

    def winner?
      # Check rows
      @board.each do |row|
        return true if row.all? { |cell| cell == row[0] && cell != ' ' }
      end

      # Check columns
      @board.transpose.each do |column|
        return true if column.all? { |cell| cell == column[0] && cell != ' ' }
      end

      # Check diagonals
      puts 'diagonals are'
      puts Matrix.rows(board).each(:diagonal).to_a
      # return true if Matrix.rows(array).each(:diagonal).to_a
      # return true if @board[0][2] == @board[1][1] && @board[1][1] == @board[2][0] && @board[1][1] != ' '

      false
    end

    def draw?
      @board.all? { |row| row.none? { |cell| cell == ' ' } }
    end
  end

  class Game
    def initialize
      @player1 = Player.new(get_name(1), 'X')
      @player2 = Player.new(get_name(2), 'O')
      @board = Board.new
      @selected_player = @player1
      @board.display_board
    end

    def play
      loop do
        player_turn
        break if game_over?

        switch_player
      end
    end


    private

    def get_name(player_number)
      print "Enter name for Player #{player_number}: "
      gets.chomp
    end

    def player_turn
      puts "#{@selected_player.name} select a position to place your marker e.g., A0 or B1"
      position = gets.chomp
      if @board.position_valid?(position)
        @board.update_board(position, @selected_player.marker)
      else
        puts 'Invalid position, try again e.g., A0 or B1'
        player_turn
      end
    end

    def switch_player
      @selected_player = @selected_player == @player1 ? @player2 : @player1
    end

    def game_over?
      @board.winner? || @board.draw?
      false
    end
  end
end

TicTacToe::Game.new.play
