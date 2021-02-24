class Team 

    def initialize(teams)
        teams.each do |key, value|
            self.class.attr_accessor(key)
            send("#{key}=", value)
            # binding.pry
        end
       end
    #This class should take in data from the API, and decide which information iis going to be relevant to display in the CLI class
end