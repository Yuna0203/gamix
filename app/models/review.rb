class Review < ApplicationRecord

  belongs_to :customer
  belongs_to :game
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  def favorited_by?(customer)
    favorites.exists?(customer_id: customer.id)
  end

end
