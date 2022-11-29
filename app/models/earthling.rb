class Earthling < ActiveRecord::Base
    has_many :visitations
    has_many :aliens, through: :visitations

    # METHODS
    # will get full name of earthling instance
    def full_name
        "#{self.first_name} #{self.last_name}"
    end 
    
    # Takes job and filters
    def self.filter_by_job(job)
        self.all.filter do |earthling|
            earthling[:job] == job
        end
    end
end
