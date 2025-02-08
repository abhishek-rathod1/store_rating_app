class Rating < ApplicationRecord
  belongs_to :user
  belongs_to :store

  validates :score, presence: true, inclusion: { in: 1..5 }
  validates :user_id, uniqueness: { scope: :store_id, message: "User can rate a store only once" }
end
