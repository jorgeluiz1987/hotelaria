
class Hotel < ApplicationRecord
    
    validates :name, :adress, :rooms, :stars, :status, presence: true  
    
  end














