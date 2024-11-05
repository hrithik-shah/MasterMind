# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize

# module only contains instructions for game
module TextInstructions
    def instructions
      <<~HEREDOC
  
  
        #{formatting('underline', 'How to play Mastermind:')}
  
        This is a 1-player game against the computer.
  
        There are six different number/color combinations:
  
        #{code_colors('1')}#{code_colors('2')}#{code_colors('3')}#{code_colors('4')}#{code_colors('5')}#{code_colors('6')}
  
  
        The computer will choose four to create a 'master code'. For example,
  
        #{code_colors('1')}#{code_colors('3')}#{code_colors('4')}#{code_colors('1')}
  
        As you can see, there can be #{formatting('red', 'more then one')} of the same number/color.
        In order to win, you need to guess the 'master code' in 6 or less turns.
  
  
        #{formatting('underline', 'Clues:')}
        After each guess, there will be up to four clues to help crack the code.
  
         #{clue_colors('*')}This clue means the number is correct and in the correct location.
  
         #{clue_colors('?')}This clue means the number is correct, but in the wrong location.

         #{clue_colors(' ')}This clue means the number is in not in the code anywhere.
  
  
        #{formatting('underline', 'Clue Example:')}
        To continue the example, using the above 'master code' a guess of "1463" would produce 3 clues:
  
        #{code_colors('1')}#{code_colors('4')}#{code_colors('6')}#{code_colors('3')}  Clues: #{clue_colors('*')}#{clue_colors('?')}#{clue_colors(' ')}#{clue_colors('?')}
  
  
        The guess had 1 correct number in the correct location and 2 correct numbers in a wrong location.
  
        #{formatting('underline', "It's time to play!")}
      HEREDOC
    end
  end
  
  # rubocop:enable Metrics/AbcSize