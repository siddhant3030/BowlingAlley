class Game
  attr_accessor :lane, :players, :num_sets, :chance_per_sets

  def initialize(lane, players, num_sets = 10, chance_per_set = 2)
    @lane = lane
    @players = players
    @num_sets = num_sets
    @chance_per_set = chance_per_set
  end

  def take_shot(standing_pins)
    rand(0..standing_pins)
  end

  def start
    @num_sets.times do |set_number|
     p "Set #{set_number + 1}"
      @players.each_with_index do |player, i|
        standing_pins = 10
        total_pin_down = 0
        @chance_per_set.times do |n|
          number_pin_down = take_shot(standing_pins)
          total_pin_down += number_pin_down
          standing_pins -= number_pin_down
          if n.zero? && number_pin_down == 10
            p "There's a strike by player #{player.name}"
            player.add_score(20)
            standing_pins = 10
          elsif n == 1 && standing_pins.zero?
            p "There's a spare by player #{player.name}"
            player.add_score(number_pin_down + 5)
          elsif set_number == @num_sets && standing_pin_down.zero?
            p 'Player gets an exta chance'
            n -= 1
          else
            p "#{player.name} pinned down #{number_pin_down} in shot #{n + 1}"
            player.add_score(number_pin_down)
          end
        end
        p "Current score for #{player.name} = #{player.get_score}"
      end
end
  end

  def winner
    max_score = -1, score
    name = nil
    for p in 0..@players.length
        player = @players[p]
        score = player.score
        if score > max_score
            max_rscore = player.score
            name = player.name
        end
    end
    name
  end    
end