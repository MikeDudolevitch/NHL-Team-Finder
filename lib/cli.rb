#Gets inputs, Displays messages to terminal
class CLI
    def run
        greeting
        sleep(3)
        list
    end
    
    def greeting 
        puts "Welcome to the NHL Team Origins App. Let's drop the puck!
                           __
                          /_/
                         /_/
                        /_/
                       /_/
                      / /
                     / /
                    / /
                   / /
                  / /
         ________/ /
        |__|_|_|__/
             
           (_)
            
        
        "
        sleep (3)
        puts "Select from the following list the team you'd like to check out:
        "
    end

    def list #Numbered list of NHL Teams to choose
        names = Team.sorted_by_name.map {|team| team.name}
        names.each.with_index(1) {|name, index| puts "#{index}. #{name}"}
    end

    def displays
        

    end

end
