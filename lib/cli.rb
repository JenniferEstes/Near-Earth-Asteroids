class CLI

    def run
        greeting
        API.grab_data #from API
    end

    def greeting
        puts "Welcome!"
        puts "Enter '2020' to see the astroids that flew around Earth during the year 2020."
        puts "Enter 'exit' to exit this program."
        menu
    end
   
    def menu
        input = gets.strip.downcase

            if input == "2020"
                asteroids_list
                menu
            elsif input == "exit"
                goodbye 
            else  
                invalid_entry
            end 
    end

    def invalid_entry
        puts "Invalid entry. Please try again."
        menu
    end

    def asteroids_list
        "puts 1. Asteriod 1"
        "puts 2. Asteriod 2"
        "puts 3. Asteriod 3"
        "puts 4. Asteriod 4"
    end

    def goodbye
        puts "Goodbye!"
    end
    
end