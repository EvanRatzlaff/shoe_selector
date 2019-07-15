#This is the controller: 
class ShoeSelector::CLI
    

        def welcome
            ShoeSelector::Scraper.scrape 
            puts "Please wait, everything is being hand-written..."
        hey_there
        shoe_types
        # pros_cons
        # done 
        end

    def hey_there
    puts "Greetings, climber! Please enter your name so we can get better acquainted."
    name = gets.chomp
    puts "Nice to meet you #{name}!"
    end 

#      def shoe_types
#         @shoes = ShoeSelector::Shoe.shoes_list
#         @shoes.each.with_index(1) do |shoe_type, i|
#             puts "#{i}. #{shoe_type} "
#         end
#     end
   
#     def pros_cons
#         number = nil
#        while number != "exit"
#         number = gets.strip
#         if number.to_i > 0 
#              @shoes[number.to_i - 1]
#         elsif number == "restart"
#             restart
#         else number == "continue"
    
#         end
#     end
# end
#     def features
#         puts "These are the features"
#     end 
#     def done
#     puts "Thanks for popping in! Have a great day!"
#     end
end