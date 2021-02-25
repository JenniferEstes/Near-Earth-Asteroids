class CLI

    def run
        API.new.get_asteroid_data 
        greeting
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

    def goodbye
        puts "Goodbye!"
    end

    def asteroids_list
        Asteroid.all.each_with_index {|asteroid, index|
          puts "#{index += 1}. #{asteroid.name_limited}"
        }
        puts "Select the asteroid name to get more information:"
        input = gets.strip.downcase #storing user input
        asteroid_selection(input) #passing user input to next method as asteroid_name
    end 

    def asteroid_selection(asteroid_name)  
        variable = Asteroid.find_by_name(asteroid_name.downcase)
        variable.each {|i|
        puts "Full Name: #{i.name}"
        puts "Last date observed: #{i.orbital_data["last_observation_date"]}"}
        puts "Maximum possible diameter: #{i.estimated_diameter["miles"]["estimated_diameter_max"]} miles"
    end

end