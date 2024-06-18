class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category

  # validation, à na ps oublier de mettre hour entre 0 et 24 et minute entre 0 et 60
  #
  #Exemples catégories :
  # - petite enfance et famille
  # - sport
  # - festival
  # - braderie, marché
end

