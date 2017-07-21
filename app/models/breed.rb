class Breed < ApplicationRecord
  has_many :felines
  validates :name, :presence => true
  scope :by_name, -> (search) { where("name like ?", "%#{search}")}
end
