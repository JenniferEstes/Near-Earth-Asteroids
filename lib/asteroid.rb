class Asteroid

    @@all = []

    def initialize(asteroid_hash)
        asteroid_hash.each { #Can go one level deeper before each if we want
        |key, value| self.class.attr_accessor(key)
        self.send("#{key}=", value) #Qs for Laura - Why do we need the key value pair? Bc it's a hash? How should I space the curlies?
    }
        @@all << self
    end

    def self.all
        @@all
    end
end

 #Data gathered from array and stored here