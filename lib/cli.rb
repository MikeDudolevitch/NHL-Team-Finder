#Gets inputs, Displays messages to terminal
class CLI
    def run
        sleep(0.5)
        greeting
        sleep(3)
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
    
    def menu #Numbered list of NHL Teams to choose from
        prompt = TTY::Prompt.new(active_color: :red)
        selection = prompt.select("Which team would you like to know more about? Scroll down for more options!", list, per_page: 10)
        team = Team.find_by_name(selection)
        display(team)
        selection2 = nil
        while selection2 != "Exit"
            selection2 = prompt.select("Would you like to select another team?", %w(Team Exit))
            case selection2 
            when "Team"
                menu
            when "Exit"
                goodbye
            end
        end
    end
    
    def display(selection) 
        puts "You have selected #{selection.name} They were founded#{selection.first_year_of_play}" 
    end

    def goodbye
        puts "Thank you for visiting the NHL Team Origins App. Take care and get pucks deep!"
        exit
    end
end
