#Gets inputs, Displays messages to terminal
class CLI
    def run
        greeting
        sleep(3)
        list
    end
    
    def greeting 
        puts "  
************************************************************************************
                                
                                     ____________________
                          __        /xxxxxxxxxx|xxxxxxxx/|
                         /_/       /xxxxxxxxxxx|xxxxxxx/x|
                        /_/       |xx|xxxxxxxxx|xxxxxx|xx|
                       / /        |xx|xxxxxxxxx|xxxxxx|xx|
                      / /         |xx|xxxxxxxxx|xxxxxx|xx|
                     / /          |xx|xxxxxxxxx|xxxxxx|xx|
            ________/ /           |x/         /       |x/
 __________|__|_|_|__/____________|/_________/________|/____________________________
             (_)                 /          /        /
                                |__________/________/

            WELCOME TO THE NHL TEAM ORIGINS APP. LET'S DROP THE PUCK!
*************************************************************************************"
    end

    def list #Numbered list of NHL Teams to choose from
        names = Team.sorted_by_name.map {|team| team.name}
        names.each.with_index(1) {|name, index| puts "#{index}. #{name}"}
        puts "
        Which team would you like to check out?
        " 
        input = gets.chomp
        display(input)
    end

    def display(input) 
        sleep(1)
        indiv_team = Team.sorted_by_name[input.to_i]
        puts "
        You've selected the #{indiv_team.name}. They were founded in #{indiv_team.first_year_of_play}.
        "
    end
end
