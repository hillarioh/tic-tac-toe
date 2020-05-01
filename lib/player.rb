class Player

    @@user = 0
    attr_reader :player_name

    def initialize(name)
        @player_name = name
        @player_id=@@user
        @@user +=1
        @player_score=0
    end
    
end