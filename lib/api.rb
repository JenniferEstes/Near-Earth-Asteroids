class API

    def initialize
        @url = "https://api.nasa.gov" 
    end

    #I created a new instance, so I created an instance variable    
    #Seperated from full URL incase I want to search multiple types of data in API
     
    def get_asteroid_data
        asteroid_response_hash = HTTParty.get(@url + "/neo/rest/v1/neo/browse?start_date=2020-01-01&end_date=2021-01-01&api_key=ZAjsIZd8HZWafuc0jniNDMocBpvYSb9woTbe619H") #gem does JSON parsing
        asteroid_hash_array = asteroid_response_hash["near_earth_objects"] #Returns array of hashes that include asteroids
        binding.pry
        self.create_asteroid_objects(asteroid_hash_array)
    end

    #pry
    #asteroid_response_hash.keys - Get the keys
    #asteroid_hash_array - Get API
    #asteroid_response_hash["near_earth_objects"] - Get actual objects and their attributes
    #asteroid_response_hash["near_earth_objects"].count - Find out number of asteroids
    #asteroid_response_hash["near_earth_objects"][0] - Get first asteroid and it's attributes
    #asteroid_response_hash["near_earth_objects"][0].keys - Get keys of first asteroid

    def create_asteroid_objects(near_earth_objects)
        near_earth_objects.each {|asteroid_hash| Asteroid.new(asteroid_hash)} #Gather asteroid information from hash 
    end
end

#Data is grabbed here