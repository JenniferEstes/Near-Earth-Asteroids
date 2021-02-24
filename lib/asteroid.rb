class Asteroid

    @@all = []

    def initialize(asteroid_hash)
        asteroid_hash.each do |key, value|
            self.class.attr_accessor(key)
            self.send("#{key}=", value)
        end 
        @@all << self
    end

    def self.all
        @@all
    end
end

 #Data gathered from array is stored here