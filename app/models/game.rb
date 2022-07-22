class Game < ApplicationRecord
  belongs_to :first_player, class_name: 'User'
  belongs_to :second_player, class_name: 'User'

  def score
    [first_player_score, second_player_score]
  end

  def winner
    return unless complete?

    score.max == first_player_score ? first_player : second_player
  end
end
