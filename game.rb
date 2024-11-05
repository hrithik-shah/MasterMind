# frozen_string_literal: true

require './text_instructions'
require './text_content'
require './display'

# main class that starts the game
class Game
  include TextInstructions
  include TextContent
  include Display

  def play
    puts instructions
    HumanSolver.new.player_turns
  end
end