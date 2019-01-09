class User < ActiveRecord::Base
	has_secure_password
	has_many :twits
	has_many :followers
	validates :email, format: {with: /@.+\...+/}
	validates :email, uniqueness: true
end