#Gets inputs, Displays messages to terminal
class CLI
    def run
        greeting
        sleep(1)
        list
    end
    
    def greeting
        puts "Welcome to the NHL Team Finder App. Let's drop the puck!"

    end
    def list
        names = Team.sorted_by_name.map {|team| team.name}
        names.each.with_index(1) do |name, index| 
            puts "#{index}. #{name}"
        end
    end

end
