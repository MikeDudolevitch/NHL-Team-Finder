class CLI
    def run
        sleep(0.5)
        greeting
        sleep(2)
        menu
    end
    
    def greeting 
        puts "  
*************************************************************************************
*                                                                                   *
*                                     ____________________                          *
*                          __        /xxxxxxxxxx|xxxxxxxx/|                         *
*                         /_/       /xxxxxxxxxxx|xxxxxxx/x|                         *
*                        /_/       |xx|xxxxxxxxx|xxxxxx|xx|                         *
*                       / /        |xx|xxxxxxxxx|xxxxxx|xx|                         *
*                      / /         |xx|xxxxxxxxx|xxxxxx|xx|                         *
*                     / /          |xx|xxxxxxxxx|xxxxxx|xx|                         *
*            ________/ /           |x/         /       |x/                          *
* __________|__|_|_|__/____________|/_________/________|/___________________________*
*             (_)                 /          /         /                            *
*                                |__________/_________/                             *
*                                                                                   *
*            WELCOME TO THE NHL TEAM ORIGINS APP. LET'S DROP THE PUCK!              *
*************************************************************************************"
    end

    def list
        all_teams = Team.sorted_by_name
        all_teams.collect {|team| team.name}
    end
    
    def menu
        input = PROMPT.select("

Which team would you like to know more about? Scroll down for more options!

        ", list, per_page: 10)
        team = Team.find_by_name(input)
        display(team)
        input2 = nil
        while input2 != "Exit"
            input2 = PROMPT.select("Would you like to select another team?", %w(Teams Exit))
            case input2 
            when "Teams"
                sleep 1
                menu
            when "Exit"
                sleep 1
                goodbye
            end
        end
    end
    
    def display(selection) 
 puts "
------------------------------------------------------------------------------------------------------------------------------

You have selected the #{selection.name}! Their first year in the National Hockey League was #{selection.first_year_of_play}.

For up-to-date rosters, schedule, and info, visit the team's official website at #{selection.official_site_url}.

------------------------------------------------------------------------------------------------------------------------------"
    end

    def goodbye
        puts "

-------------------------------------------------------------------------------------------------------------------------------

Thank you for visiting the NHL Team Origins App. Take care and finish all your checks!

-------------------------------------------------------------------------------------------------------------------------------
"
        exit
    end
end
