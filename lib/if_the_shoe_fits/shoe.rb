class ShoeSelector::Shoe
    attr_accessor :type, :closure, :material #:buy

        @@all = []

        def initialize(attributes)
            attributes.each do |key, value|
                self.send("#{key}=", value)
        # @type = type 
        # @closure = closure
        # @material = material
        # @@all << self
            end
        end 
        def self.create(attributes)
            shoe = self.new(attributes)
            shoe.save
            shoe
        end

        def self.create_from_collection(array)
            array.reverse.each do |attributes|
                self.create(attributes)
            end
        
        end

        def save
            self.class.all.push(self)

        end 

        def self.all
            @@all
        end
#     shoe_1 = self.new
#     shoe_1.name = "Neutral"
#     shoe_1.availability = true
#     shoe_1.url = doc.css("#page-content > div:nth-child(3) > div > div > section:nth-child(7) > div.col-xs-12.vertical-push > h3").text

#     shoe_2 = self.new
#     shoe_2.name = "Moderate"
#     shoe_2.url = doc.css("")
 #     shoe_3 = self.new
 #     shoe_3.name = "Aggressive"
 #     shoe_3.url = doc.css("#page-content > div:nth-child(3) > div > div > section:nth-child(8) > div.col-xs-12.vertical-pull.vertical-push > h3").text
 # binding.pry


 #     [Neutral, Moderate, Aggressive]
end