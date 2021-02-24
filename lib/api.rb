class API
     #All data is going to be grabbed here 
    def initialize
        @url = "https://api.nasa.gov" #I created a new instance, so I created an instance variable
    end
     
    def get_astroid_data
        astroid_hash = HTTParty.get(@url + "/neo/rest/v1/neo/browse?start_date=2020-01-01&end_date=2021-01-01&api_key=ZAjsIZd8HZWafuc0jniNDMocBpvYSb9woTbe619H") #gem does JSON parsing
        astroid_hash[" near_earth_objects"] #because this is all we want - an erray of astroid information 
        binding.pry
    end
end
 #pry
 #astroid_hash - to get the API
 #astroid_hash.keys - to get the keys
 #astroid_hash["near_earth_objects"] - to get the actual objects
