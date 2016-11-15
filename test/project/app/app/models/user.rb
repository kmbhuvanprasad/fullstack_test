class User < ActiveRecord::Base
	has_many :events, foreign_key: :owner_id

	has_secure_password
	validates :firstname,:username, presence: true
	validates :lastname, presence: true
	validates :username, presence: true
	validates :phonenumber, presence: true
    validates :email,presence: true, :uniqueness => true
    validates :password, on: :create, presence: true, length: { minimum: 4 },format: { with: /( (?=.*\d)(?=.*[A-Z]))/x ,
        message: "must contain 3 of the following: an uppercase letter, a digit,"}
end
