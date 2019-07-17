class ShoeSelector::Shoe
    attr_accessor :type, :description, :material

        @@all = []

        def initialize(attributes)
            attributes.each do |key, value|
                self.send("#{key}=", value)
       
            end
        end 
        def self.create(type, description)
            self.new(type, description).tap do |shoe| shoe.save
        end
        end

        def self.create_from_collection(array)
            array.each do |attributes|
                self.create(attributes[:type], attributes[:description])
            end
        binding.pry
        end

        def save
            self.class.all.push(self)
        end 

        def self.all
            @@all
        end
    end 