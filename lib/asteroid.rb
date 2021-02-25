class Asteroid

    @@all = []

    def initialize(asteroid_hash)
        asteroid_hash.each {|key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        }
        self.save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def self.find_by_name(name)
        self.all.select {|asteroid| asteroid.name_limited.downcase == name}
    end
end

 #Data gathered from array and stored here