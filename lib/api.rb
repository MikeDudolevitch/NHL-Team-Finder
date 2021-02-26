class API
    
    def self.get_data
        uri = URI("https://statsapi.web.nhl.com/api/v1/teams")
        response = Net::HTTP.get_response(uri)
        response_hash = JSON.parse(response.body)
        response_hash["teams"].each {|team| Team.new(team)}
    end
    
end