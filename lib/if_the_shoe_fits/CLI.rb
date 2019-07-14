#This is the controller: 
class ShoeSelector::CLI
        def welcome
        hey_there
        restart
        pros_cons
        done 
    end

    def hey_there
    puts "Greetings, climber! Please enter your name so we can get better acquainted."
    name = gets.chomp
    puts "Nice to meet you #{name}!"
    #@@name << name
    end 

     def restart
        puts "Here are the three main types of climbing shoes. Enter a number on the list to see the pros and cons of that shoe."
        puts "1. Neutral"
        puts "2. Moderate"
        puts "3. Aggressive"
        @shoes = ShoeSelector::Shoe.shoe_types
    end

   
    end
    def pros_cons
        number = nil
       while number != "exit"
        puts "After you've selected a shoe, type continue to proceed with this shoe, or type restart to view other shoe types."
        number = gets.strip
        if number == "1"
            puts "Pros list for neutral"
            puts "Cons list for neutral"
        elsif number == "2" 
            puts "pros list for mod"
            puts "cons list for mod"
        elsif number == "3"
            puts "pros for Agg"
            puts "cons for Agg"
        elsif number == "other"
            puts "1. Neutral"
            puts "2. Moderate"
            puts "3. Aggressive"
        elsif number == "restart"
            restart
        else number == "continue"
            features
        end
        #after selection, pros and cons list will be returned for selection.
        #does selection need to be saved to return ideal shoe at the end?
         end
    end
    def features
        puts "These are the features"
    end 
    def done
    puts "Thanks for popping in! Have a great day! #{@@name.join}"
    end