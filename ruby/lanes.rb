require bowling_alley_exception 
class Lane
    attr_accessor :id, :max_players, :num_players, :price

    # This is a constructor for the class
    def initialize(id, max_players, num_player)
      @id = id
      @max_players = max_players
      @num_player = num_player
    end

    def number_of_players(num_players)
        if num_players > @max_players
          raise BowlingAlleyException, "Sorry! No more than #{@max_players} can play in this lane."
        end
        @num_players = num_players
    end
end