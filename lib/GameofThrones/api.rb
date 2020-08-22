class API
   
    def self.get_house(input)
        url = "https://www.anapioficeandfire.com/api/houses?name=#{input}"
        response = HTTParty.get(url)
        response.each do |house|
            # binding.pry 
            name = house["name"]
            region = house["region"]
            coatOfArms = house["coatOfArms"]
            words = house["words"]
            titles = house["titles"]
            GoT.new(name, region, coatOfArms, words, titles)
            GoT
        
        end
    end
end
