class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    name = "#{self.first_name} #{self.last_name}"
  end 
  
  def list_roles
    self.characters.collect do |character|
    self.shows.collect do |show|  
     "#{character.actor.full_name} - #{character.name} - #{show.name}"
    end.join
  end
  
end