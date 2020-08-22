class CLI
   
    @@all = []
    @@houses = ["House Baratheon", "House Lannister", "House Stark", "House Targaryen", "House Tyrell"]
    
    def start
        puts "Welcome to my Game Of Thrones App!"
        puts ""
        puts "Please select a House by number:"
        puts ""
        @@houses.each.with_index(1) do |house, index|
            puts ""
            puts "#{index}: #{house}"
            puts ""
        end
        get_house
        

    end

    def get_house
        input = gets.strip
        check_exit?(input)
        get_houses(input)
        house_display
        select_again
    end

    def get_houses(input)
        if input == "1"
            API.get_house("House+Baratheon+of+Dragonstone")
            API.get_house("House+Baratheon+of+King's+Landing")
            API.get_house("House+Baratheon+of+Storm's+End")
        elsif input == "2"
            API.get_house("House+Lannister+of+Casterly+Rock")
            API.get_house("House+Lannister+of+Darry")
            API.get_house("House+Lannister+of+Lannisport")
        elsif input == "3"
            API.get_house("House+Stark+of+Winterfell")
        elsif input == "4"
            API.get_house("House+Targaryen+of+King's+Landing")
        elsif input == "5"
            API.get_house("House+Tyrell+of+Highgarden")
            API.get_house("House+Tyrell+of+Brightwater+Keep")
        else
            puts "Invalid selection, please try again:"
            puts ""
            start
        end
        
    end

    def house_display
        puts "Please choose a house by number:"
        GoT.all.each.with_index(1) do |house, index|
            puts ""
            puts "#{index}: #{house.name}"
        end
        get_house_info
    end

    def get_house_info
        input = gets.strip
        check_exit?(input)
        input = input.to_i
        if input > 0 && input <= GoT.all.length
        puts ""
        house = GoT.all.find.with_index(1) do |house, index|
            input == index
        end
            if house
                puts "House Information:"
                puts "Name: #{house.name}"
                puts "Region: #{house.region}"
                puts "CoatOfArms: #{house.coatOfArms}"
                puts "Mottos: #{house.words}"
                puts "Titles: #{house.titles.join(", ")}"
            else
                puts "Invalid selection, please try again:"
            end
        else
            check_exit?(input)
            puts "Invalid selection, please try again:"
            house_display
        end
    end

    def select_again
        puts ""
        puts "Would you like to make another selection: yes/no"
        input = gets.strip
        check_exit?(input)
        if input.downcase == "yes"
            GoT.all.clear
            start
        else 
            exit
        end
    end

    def check_exit?(input)
        if input.downcase == "exit"
            exit
        end
    end
end