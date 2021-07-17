require 'pry'

class Show < ActiveRecord::Base
    belongs_to :network 
    has_many :characters
    has_many :actors, through: :characters


    def actors_list
        # returns a list of the full names of each actor associated with the show 
        actors.map do |actor|
            "#{actor.first_name} #{actor.last_name}"
        # binding.pry
        end

    end

end