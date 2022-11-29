class Alien < ActiveRecord::Base
    has_many :visitations
    has_many :earthlings, through: :visitations

    # METHODS
    def visit(earthling)
        Visitation.create(date: DateTime.new(), earthling_id: earthling[:id], alien_id: self.id)
    end

    def total_light_years_traveled
        self.light_years_to_home_planet * 2 * self.visitations.length
    end

    # def self.most_frequent_visitor
        
    # end

    def self.average_light_years_to_home_planet
        self.all.sum(:light_years_to_home_planet) / self.all.length
    end
end
