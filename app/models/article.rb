class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments

  scope :faitsDivers, -> { where(category_id: 1) } # Permet d'utiliser la méthode Article.faitsDivers
  scope :reportage, -> { where(category_id: 2) } # Permet d'utiliser la méthode Article.reportage
  scope :recette, -> { where(category_id: 3) } # Permet d'utiliser la méthode Article.recette

  # Validateur sur la présence (required)
  validates :title, presence: {
    message: "Le titre doit être renseigné."
  }

  # Validateur sur l'unicité
  validates :title, uniqueness: {
    message: "Ce titre est déjà pris."
  }
end
