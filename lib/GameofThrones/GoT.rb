class GoT
   
    @@all = []
    attr_accessor :name, :culture, :aliases, :allegiances
    
    def initialize(name, culture, aliases, allegiances)
        @name = name
        @culture = culture
        @aliases = aliases
        @allegiances = allegiances
        @@all << self
    end

    def self.all
        @@all
    end
    
end
