class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :show, through: :character
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    self.characters.collect do |character|
     "#{character.actors.name} - #{character.shows.name}"
    end
  end
  
end