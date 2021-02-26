class Team 
    
    attr_accessor :first_year_of_play, :name, :official_site_url
    @@all = []

    def initialize(team)
        @name = team["name"]
        @first_year_of_play = team["firstYearOfPlay"]
        @official_site_url = team["officialSiteUrl"]
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |team|
            team.name == name
        end
    end

    def self.sorted_by_name #
        self.all.sort_by {|team| team.name}
    end

end