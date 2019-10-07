class Player
    attr_accessor :id, :name, :total_score
    def initialize(id, name)
        @id = id
        @name = name
        @total_score = 0
    end
    
    # we user attr_accessor to create getters and setters.
    def add_score(score)
        @total_score += score
    end
    
    def get_score
     @total_score
    end
 end
 