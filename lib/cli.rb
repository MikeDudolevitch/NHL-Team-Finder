#Gets inputs, Displays messages to terminal
class Cli
    def initialize
        API.new.get_data
    end
end
