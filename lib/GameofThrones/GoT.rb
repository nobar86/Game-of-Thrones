class GoT
   
    @@all = []
    attr_accessor :name, :region, :coatOfArms, :words, :titles
    
    def initialize(name, region, coatOfArms, words, titles)
        @name = name
        @region = region
        @coatOfArms = coatOfArms
        @words = words
        @titles = titles
        @@all << self
    end

    def self.all
        @@all
    end
    
end
