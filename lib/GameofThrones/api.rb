class API
   
    def self.get_characters(input)
        url = "https://www.anapioficeandfire.com/api/houses/#{input}"
        response = HTTParty.get(url)
        response.each do |character| 
            name = character["name"]
            culture = character["culture"]
            aliases = character["aliases"]
            allegiances = character["allegiances"]
            Characters.new(name, culture, aliases, allegiances)
            Characters
        
        end
    end
end
