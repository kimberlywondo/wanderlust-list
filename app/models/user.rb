class User < ApplicationRecord
	has_many :trips, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
end
