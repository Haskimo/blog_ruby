class Article < ActiveRecord::Base
  belongs_to :category

  # Validateur sur la présence (required)
  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  # Validateur sur l'unicité
  validates :title, uniqueness: {
    message: "Ce titre est déjà pris."
  }
end
