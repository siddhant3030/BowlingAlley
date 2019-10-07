class Player
    attr_accessor :id, :name, :total_score
    @total_score = 0
    def initialize(id, name)
        @id = id
        @name = name
    end
    
    # we user attr_accessor to create getters and setters.
    def add_score(score)
        @total_score += score
    end    
end

# sid = Player.new(1, 'Sid')
# puts sid.name


    



