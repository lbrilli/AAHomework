class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end

    game_over_message
    reset_game

  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end

  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
    end

  end

  #The goal of require_sequence is to prompt the user to repeat back the new 
  #sequence that was just shown to them, one color at a time. If they give an 
  #incorrect color, it should immediately set @game_over to be true.
  def require_sequence
    counter = 0

    unless @game_over || counter == sequence_length
      input = gets.chomp
      if input == @seq[counter]
        counter += 1
      else
        @game_over = true
        break
      end
    end

  end

  def add_random_color
    @seq += COLORS.sample(1)

  end

  def round_success_message
    puts "Nice work! Let's see if you can keep it up..."
  end

  def game_over_message
    puts "Awwww shoot! Not quite right... better luck next time!"
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false

  end
end
