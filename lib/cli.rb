class CLI

    def run
        greeting
        API.grab_data #from API
    end

    def greeting
        puts "Hello! Are you ready to look up some space stuff?"
    end
end

#get inputs and shows strings as well as puts statements
#how am i displaying and how am i interacting with the user?