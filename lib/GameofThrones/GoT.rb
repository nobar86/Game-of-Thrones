

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

    def display_motto
        if self.words == ""
            puts "Mottos: N/A"
        else
          puts "Mottos: #{self.words}"
        end
    end
    
    def self.all
        @@all
    end

    def self.find_by_index(input)
        @@all.find.with_index(1) do |house, index|
            input == index
    end
end
    
    def self.find_by_name(input)
        @@all.find do |get_house|
         input == get_house
      
        end
    end
    
end
