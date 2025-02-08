class Store < ApplicationRecord
  # belongs_to :owner
  # belongs_to :user
  has_many :ratings, dependent: :destroy
end
