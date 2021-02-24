# All data coming from the API. 
#Need to set our API url to an instance variable
# HTTParty gem condenses functions we need to do to our data

# ^THESE INCLUDED IN ENVIRONMENT, SO DELETE IN FUTURE

class API
    def get_data
      
        uri = URI("https://statsapi.web.nhl.com/api/v1/teams")
        response = Net::HTTP.get(uri)
        puts JSON.parse(response)
        
    end
end