class Trip < ApplicationRecord
	belongs_to :user
	has_many :photos, dependent: :destroy
	validates :photos, presence: true  
	accepts_nested_attributes_for :photos, allow_destroy: true
end
