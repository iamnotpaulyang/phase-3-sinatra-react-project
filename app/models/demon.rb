class Demon < ActiveRecord::Base
    has_many :souls

     def number_of_souls
        self.souls.count
     end
     
end