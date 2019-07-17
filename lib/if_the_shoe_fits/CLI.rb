#This is the controller: 
class ShoeSelector::CLI
    
    @@name = ""

     def welcome
            ShoeSelector::Scraper.scrape 
        hey_there
        main_menu
        types_of_shoes
        end

    def hey_there
    puts "Greetings, climber! Please enter your name so we can get better acquainted."
    name = gets.chomp
    @@name << name
    puts "Nice to meet you #{@@name}!"
    end 

     def main_menu
        puts "To view types of climbing shoes, type '1'. Otherwise, type 'exit' to exit the shoe selector."
                feedback = gets.strip
                if feedback == "1"
                    types_of_shoes
                    shoe_descriptions
                elsif feedback == "exit"
                    done
                    exit
                else 
                    invalid_entry
                    main_menu
                    end
        end
    def types_of_shoes
        puts "Type a number of which shoe you want to know more about."
        ShoeSelector::Shoe.all.each.with_index(1) do |shoe, index|
            puts "#{index},  #{shoe.type}"
        end 
    
        def shoe_descriptions
                feedback = gets.strip
                if feedback == "exit"
                    done 
                    exit
                elsif feedback.to_i.between?(1, ShoeSelector::Shoe.all.length)
                    print_shoe_description( ShoeSelector::Shoe.all[feedback.to_i - 1])
                    main_menu
                else 
                    invalid_entry
                    main_menu
                end 
                
        end 
    end

    def  print_shoe_description(shoe) 
        puts ""
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~#{shoe.type}~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts ""
        puts shoe.description
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
        puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    end
    def invalid_entry 
        puts "Entry invalid, rerouting to Main Menu...."
        puts "."
        puts ".."
        puts "..."
        puts "...."
        puts "....."
        main_menu 
    end 
    def done
    puts "Thanks for popping in! Have a great day, #{@@name}"
    end
end