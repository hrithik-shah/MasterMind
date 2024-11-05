# frozen_string_literal: true

# game logic for human_solver and computer_solver
module GameLogic
    def compare(master, guess)
      temp_master = master.clone
      temp_guess = guess.clone
      @clues = get_clues(temp_master, temp_guess)
    end

    def get_clues(master, guess)
      res = ''
      guess.each_with_index do |item, index|
        res += item == master[index] ? '*' : master.include?(item) ? '?' : ' '
      end
      res
    end
  
    def solved?(master, guess)
      master == guess
    end
  
    def repeat_game
      puts game_message('repeat_prompt')
      replay = gets.chomp
      puts game_message('thanks') if replay.downcase != 'y'
      Game.new.play if replay.downcase == 'y'
    end
  end