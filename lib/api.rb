class API

    def initialize
        @url = "https://api.nasa.gov" 
    end

    #I created a new instance, so I created an instance variable
    #Seperated from full URL incase I want to search multiple types of data in API
     
    def get_astroid_data
        astroids_response_hash = HTTParty.get(@url + "/neo/rest/v1/neo/browse?start_date=2020-01-01&end_date=2021-01-01&api_key=ZAjsIZd8HZWafuc0jniNDMocBpvYSb9woTbe619H") #gem does JSON parsing
        astroids_response_hash["near_earth_objects"] #because this is all we want - an erray of hashes that include astroid information
    end

 #pry
 #astroid_hash - to get the API
 #astroid_hash.keys - to get the keys
 #astroid_hash["near_earth_objects"] - to get the actual objects

    def create_astroid_objects(near_earth_objects)
        new_array = []
        near_earth_objects.each {|astroid_hash| new_array << Astroid.new(astroid_hash)} #Gather astroid information from hash 
        new_array
    end

end

#All data is grabbed here