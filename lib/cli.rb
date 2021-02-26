class CLI

    def run
        API.new.get_asteroid_data 
        greeting
    end

    def greeting
        puts "NNNNNNNN        NNNNNNNN               AAA                  SSSSSSSSSSSSSSS                AAA"
        puts "N:::::::N       N::::::N              A:::A               SS:::::::::::::::S              A:::A"
        puts "N:::::::::N     N::::::N            A:::::::A            S:::::S     SSSSSSS            A:::::::A"
        puts "N::::::::::N    N::::::N           A:::::::::A           S:::::S                       A:::::::::A"
        puts "N:::::::::::N   N::::::N          A:::::A:::::A          S:::::S                      A:::::A:::::A"
        puts "N:::::::N::::N  N::::::N         A:::::A A:::::A          S::::SSSS                  A:::::A A:::::A"
        puts "N::::::N N::::N N::::::N        A:::::A   A:::::A          SS::::::SSSSS            A:::::A   A:::::A"
        puts "N::::::N  N::::N:::::::N       A:::::A     A:::::A           SSS::::::::SS         A:::::A     A:::::A"
        puts "N::::::N   N:::::::::::N      A:::::AAAAAAAAA:::::A             SSSSSS::::S       A:::::AAAAAAAAA:::::A"
        puts "N::::::N    N::::::::::N     A:::::::::::::::::::::A                 S:::::S     A:::::::::::::::::::::A"
        puts "N::::::N     N:::::::::N    A:::::AAAAAAAAAAAAA:::::A                S:::::S    A:::::AAAAAAAAAAAAA:::::A"
        puts "N::::::N      N::::::::N   A:::::A             A:::::A   SSSSSSS     S:::::S   A:::::A             A:::::A"
        puts "N::::::N       N:::::::N  A:::::A               A:::::A  S::::::SSSSSS:::::S  A:::::A               A:::::A"
        puts "N::::::N        N::::::N A:::::A                 A:::::A S:::::::::::::::SS  A:::::A                 A:::::A"
        puts "NNNNNNNN         NNNNNNNNAAAAAA                   AAAAAAA SSSSSSSSSSSSSSS   AAAAAAA                   AAAAAAA"
        puts " "
        puts "DDDDDDDDDDDDD                       AAA               TTTTTTTTTTTTTTTTTTTTTTT               AAA"
        puts "D::::::::::::DDD                   A:::A              T:::::::::::::::::::::T              A:::A"
        puts "D:::::::::::::::DD                A:::::A             T:::::::::::::::::::::T             A:::::A"
        puts "DDD:::::DDDDD:::::D              A:::::::A            T:::::TT:::::::TT:::::T            A:::::::A"
        puts "  D:::::D    D:::::D            A:::::::::A           TTTTTT  T:::::T  TTTTTT           A:::::::::A"
        puts "  D:::::D     D:::::D          A:::::A:::::A                  T:::::T                  A:::::A:::::A"
        puts "  D:::::D     D:::::D         A:::::A A:::::A                 T:::::T                 A:::::A A:::::A"
        puts "  D:::::D     D:::::D        A:::::A   A:::::A                T:::::T                A:::::A   A:::::A"
        puts "  D:::::D     D:::::D       A:::::A     A:::::A               T:::::T               A:::::A     A:::::A"
        puts "  D:::::D     D:::::D      A:::::AAAAAAAAA:::::A              T:::::T              A:::::AAAAAAAAA:::::A"
        puts "  D:::::D     D:::::D     A:::::::::::::::::::::A             T:::::T             A:::::::::::::::::::::A"
        puts "  D:::::D    D:::::D     A:::::AAAAAAAAAAAAA:::::A            T:::::T            A:::::AAAAAAAAAAAAA:::::A"
        puts "DDD:::::DDDDD:::::D     A:::::A             A:::::A         TT:::::::TT         A:::::A             A:::::A"
        puts "D:::::::::::::::DD     A:::::A               A:::::A        T:::::::::T        A:::::A               A:::::A"
        puts "D::::::::::::DDD      A:::::A                 A:::::A       T:::::::::T       A:::::A                 A:::::A"
        puts "DDDDDDDDDDDDD        AAAAAAA                   AAAAAAA      TTTTTTTTTTT      AAAAAAA                   AAAAAAA"
    puts " "
    puts " "
    puts " "
        puts "Enter 'nasa' to see the list of asteroids NASA observed flying near Earth during the year 2020."
        puts "Enter 'exit' to exit program."
        menu
    end
   

    def menu
        input = gets.strip

            if input == "nasa"
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
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts " "
        puts "Goodbye!"    
    end

    def asteroid_list
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts " "
        Asteroid.all.each_with_index {|asteroid, index|
        puts "#{index += 1}. #{asteroid.name_limited}"
        }
        puts " "
        puts "Enter the asteroid name to get data."
        input = gets.strip #storing user input
        asteroid_selection(input) #passing user input to next method as asteroid_name
    end 

    def asteroid_selection(name_limited)  
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts " "
        variable = Asteroid.find_by_name(name_limited)
        variable.each {|i|
        puts "Full Name: #{i.name}"
        puts "Last date observed: #{i.orbital_data["last_observation_date"]}"
        puts "Maximum possible diameter: #{i.estimated_diameter["miles"]["estimated_diameter_max"]} miles"}
    end

end