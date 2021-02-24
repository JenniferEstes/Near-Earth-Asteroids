class Asteroid

    @@all = []

    def initialize(asteroid_hash)
        asteroid_hash.each {|key, value| self.class.attr_accessor(key)} #C an go one level deeper before each if we want
        self.send("#{key}=", value) #Q for Laura - Why do we need the key value pair? Bc it's a hash? 
    end 
        @@all << self
    end

    def self.all
        @@all
    end
end

 #Data gathered from array and stored here