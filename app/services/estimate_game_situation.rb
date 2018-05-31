class EstimateGameSituation

  PLAYER_WINS = {rock: "scissors", paper: "rock", scissors: "paper"}

  def initialize(player_throw)
    @player_throw = player_throw
    @computer_throw = generate_random_throw
    @player_winning_combo = PLAYER_WINS[@player_throw.to_sym]
  end

  def estimate
    if are_identical_throws?
      "Identical throws! Try again!"
    elsif is_player_won?
      "Player wins! Congratulations!"
    else
      "Computer wins! Ha-Ha-Ha"
    end
  end

  def is_player_won?
    return true if (@player_winning_combo == @computer_throw)
  end

  def are_identical_throws?
    return true if (@player_throw == @computer_throw)
  end

  def generate_random_throw
    ["rock", "paper", "scissors"].sample
  end

end