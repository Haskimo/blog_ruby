class Comment < ActiveRecord::Base
  belongs_to :article

  validates :author, presence: {
    message: "Veuillez entrer votre nom"
  }
  validates :content, presence: {
    message: "Veuillez... Bah écrire un commentaire..."
  }
  validates :article_id, presence: {
    message: "Identifiant d'article nécessaire"
  }
end
