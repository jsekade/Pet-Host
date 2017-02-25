class Pet < ApplicationRecord
	belongs_to :user

	validates :name, :type_pet, :breed, :age, :description_pet, :care, presence: true
end
