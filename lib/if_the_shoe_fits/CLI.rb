#This is the controller: 
class ShoeSelector::CLI
     def welcome
            ShoeSelector::Scraper.scrape 
        hey_there
        main_menu
        # pros_cons
        # done 
        end

    def hey_there
    puts "Greetings, climber! Please enter your name so we can get better acquainted."
    name = gets.chomp
    puts "Nice to meet you #{name}!"
    end 

     def main_menu
        puts "Let's get started on finding you your perfect climbing shoe. Type a number to continue."
        puts "1. Pros & Cons of Each Shoe"
        puts "2. I'm not interested"
                number = gets.strip
                if number == "1"
                    what_we_scraped
                elsif "2"
                    done
                else number > "2"
                    puts "Invalid entry. Select a number or type exit"
                    main_menu
                    end
        end
    def what_we_scraped
        ShoeSelector::Shoe.all.
            puts "#{Shoe.type}"
        
    end
    def done
    puts "Thanks for popping in! Have a great day!"
    end
end