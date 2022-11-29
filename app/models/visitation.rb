class Visitation < ActiveRecord::Base
    belongs_to :aliens
    belongs_to :earthlings
end
