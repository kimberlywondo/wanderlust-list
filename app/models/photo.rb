class Photo < ApplicationRecord
  belongs_to :trip, dependent: :destroy
end
