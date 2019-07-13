#This is the controller: 
class ShoeSelector::CLI

def welcome
puts "Greetings, climber! Please enter your name so we can get better acquainted."
name = gets.chomp
puts "Nice to meet you #{name}!\n My job is to get you into the a shoe that's just right for you."
puts "First, I need to know your climbing style. Please select one below:"
go
end

def go
puts "Climbing Style:"
#needs a number selection of Neutral, Moderate, and Aggressive
#after selection, pros and cons list will be returned for selection.
#does selection need to be saved to return ideal shoe at the end?
end
def neutral_combo

end
end 