class CLI

    # def run
    #     greeting
    #     API.grab_data #from API
    # end

    def greeting
        puts "Welcome!"
        puts "Enter '2020' to see the astroids that flew around Earth during the year 2020."
        puts "Enter 'exit' to exit this program."
        menu
    end
   
    def menu
        input = get.strip.downcase
            if input == "list"
                puts list
            elsif input == "exit"
                puts "exit" 
            else  
                puts "Invalid entry. Please try again."
                menu
            end
    end
     
end