class CLI

    def houses
        ["Stark", "Lannister", "Targaryen", "Tyrell", "Baratheon", "Tarly", "Clegane", "Greyjoy"]
    end
   

    def start
        puts "Welcome user to my Game Of Thrones app!"
        puts "Please select a house:"
        houses.each {|h| puts h }
        get_house
        API.get_GoT(houses)
    end

    def get_house
        input = gets.strip
        API.get_GoT(input)
    end


end
