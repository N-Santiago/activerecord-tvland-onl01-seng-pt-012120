class Show < ActiveRecord::Base
  
  has_many :actor, through: :character
  belongs_to :network 
  
  def actors_list
    self.actors.collect do |actor|
     "#{actor.first_name} #{actor.last_name}"
    end
  end
 
end 
