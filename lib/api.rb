class API

    def initialize
        @url = "https://api.nasa.gov" 
    end

    #I created a new instance, so I created an instance variable    
    #Seperated from full URL incase I want to search multiple types of data in API
     
    def get_asteroid_data
        asteroid_response_hash = HTTParty.get(@url + "/neo/rest/v1/neo/browse?start_date=2020-01-01&end_date=2021-01-01&api_key=ZAjsIZd8HZWafuc0jniNDMocBpvYSb9woTbe619H") #gem does JSON parsing
        asteroid_hash_array = asteroid_response_hash["near_earth_objects"] #Requesting just the hashes that include asteroids
        binding.pry
        self.create_asteroid_objects(asteroid_hash_array)
    end

    #pry
    #asteroid_hash_array - to get the API
    #asteroid_response_hash.keys - to get the keys
    #asteroid_hash_array["near_earth_objects"] - to get the actual objects

    def create_asteroid_objects(near_earth_objects)
        near_earth_objects.each {|asteroid_hash| Asteroid.new(asteroid_hash)} #Gather asteroid information from hash 
    end
end

#Data is grabbed here