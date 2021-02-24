class CLI

    def run
        greeting
        API.grab_data #from API
    end

    def greeting
        puts "Hello! Are you ready to look up some space stuff?"
    end
end

#get inputs and shows strings and puts statements
#no instance method