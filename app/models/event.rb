class Event < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :photo
  # validation, à na ps oublier de mettre hour entre 0 et 24 et minute entre 0 et 60
  #
  #Exemples catégories :
  # - petite enfance et famille
  # - sport
  # - festival
  # - braderie, marché
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
