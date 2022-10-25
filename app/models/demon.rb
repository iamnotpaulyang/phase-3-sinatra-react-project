class Demon < ActiveRecord::Base
    has_many :souls

     def self.number_of_souls
        self.all.map { |d| d.attributes.merge(soul_num: d.souls.count)}
     end

end