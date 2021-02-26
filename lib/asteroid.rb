class Asteroid

    @@all = [] #class needs to keep track of instances

    def initialize(asteroid_hash)
        asteroid_hash.each {|key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        }
        save
    end

    def self.all #read all array
        @@all
    end

    def save
        @@all << self
    end

    def self.find_by_name(name_limited)
        self.all.select {|asteroid| asteroid.name_limited == name_limited} #find instead of select because find will return the first instance that matches block's conditional
    end
end
 
 #Data gathered from array and stored here