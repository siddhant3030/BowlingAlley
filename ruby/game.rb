require 'enum'
class Game
    attr_accessor :lane, :players, :num_sets, chance_per_sets
    @counter = 0
    @num_sets = 10
    @chance_per_set =  2

    def initialize(lane, players)
      @lane = lane
      @players = players
    end

    def take_shot(standing_pins)
        return 0 + rand(0..standing_pins)
    end

    def start
        while @counter < @num_sets do
          for i in 0..@players.length do
            player = @players[i]
            standing_pins = 10
            total_pin_down = 0
            p Enum.new.generate_score
            for n in 0..@chance_per_set do
                number_pin_down = take_shot(standing_pins)
                total_pin_down += number_pin_down
                standing_pins -= number_pin_down

                if n == 0 and number_pin_down == 10
                  puts "There's a strike by player #{player.name}"
                  player.add_score(20)
                  standing_pins = 10 
                elsif n == 1 and standing_pins == 0
                  puts "There's a spare by player #{player.name}"
                  player.add_score(number_pin_down + 5)
                else
                  spare"#{player.name} pinned down #{number_pin_down} in #{(n+1)} shot"
                  player.add_score(number_pin_down)
                end
            end
          @counter += 1
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
      return name
    end     
end