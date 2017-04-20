class Cookie < ApplicationRecord
  has_many :pictures, dependent: :destroy
  accepts_nested_attributes_for :pictures, allow_destroy: true

  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
