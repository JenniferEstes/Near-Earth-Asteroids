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
        input = gets.strip

            if input == "2020"
                asteroid_list
            elsif input == "exit"
                goodbye 
            else  
                invalid_entry
            end 
    end

    def invalid_entry
        puts "Invalid entry. Please try again."
        menu #to go back through the selection process 
    end

    def goodbye
        puts "Goodbye!"
    end

    def asteroid_list
        Asteroid.all.each_with_index {|asteroid, index|
          puts "#{index += 1}. #{asteroid.name_limited}"
        }
        puts "Select the asteroid:"
        input = gets.strip #storing user input
        asteroid_selection(input) #passing user input to next method as asteroid_name
    end 

    def asteroid_selection(name_limited)  
        variable = Asteroid.find_by_name(name_limited)
        binding.pry
        variable.each {|i|
        puts "Full Name: #{i.name}"
        puts "Last date observed: #{i.orbital_data["last_observation_date"]}"
        puts "Maximum possible diameter: #{i.estimated_diameter["miles"]["estimated_diameter_max"]} miles"}
    end

end