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
        names = Team.sorted_by_name.map {|team| team.name}
        names.each do |name|
            # puts "#{name}"
        end
    end
    
    def menu #Numbered list of NHL Teams to choose from
        prompt = TTY::Prompt.new
        selection = prompt.select("Which team would you like to know more about?", list, per_page: 10)
        display(selection)
        team = Team.find_by_name(selection)
    end
    
    def display(selection) 
        puts "#{selection.name} #{selection.first_year_of_play}" 
    end

    def exit
        
    end
end
