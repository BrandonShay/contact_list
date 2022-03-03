class Contact < ApplicationRecord
  # Associations - how the other objects are related to the current object 
  # belongs_to
  # - always be in the child model
  # - tell us who the parent model is 
  # belongs_to :parent 

  # has_many
    # - more than one 
    # has_many :children(s)
  
  # has_one 
    # - only one 
    # has_one :child 
    # has_one :address
  # - these ones will always be in the parent models 
  # should only have one per model
  # adv
  # has_many :through
  # has_one :through 

  # option 
  # dependent - depending on a action. 
  # - parents has_many, has ones 

  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy
end