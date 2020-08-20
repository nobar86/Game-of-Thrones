class API


    def self.get_GoT(houses)

        url = "https://www.anapioficeandfire.com/api/houses"
        response = HTTParty.get(url)
        
    end


end
