class Spot < ApplicationRecord
  belongs_to :address
  belongs_to :user
  accepts_nested_attributes_for :address
  has_one_attached :photo
end
