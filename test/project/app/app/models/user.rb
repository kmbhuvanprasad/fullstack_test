class User < ActiveRecord::Base
	has_and_belongs_to_many :events
	has_secure_password
	validates :firstname,:lastname,:username,:phonenumber, presence: true
    validates :email,presence: true, :uniqueness => true
    validates :password, on: :create, presence: true, length: { minimum: 4 },format: { with: /( (?=.*\d)(?=.*[A-Z]))/x ,
        message: "must contain 3 of the following: an uppercase letter, a digit,"}
end
