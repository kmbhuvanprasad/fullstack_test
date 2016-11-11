class User < ActiveRecord::Base
	has_secure_password
	validates :firstname,:lastname,:username, presence: true
    validates :email,presence: true, :uniqueness => true
    validates :password, on: :create, presence: true, length: { minimum: 8 },format: { with: /( (?=.*\d)(?=.*\W)(?=.*[A-Z]))/x ,
        message: "must contain 3 of the following: a special symbol, an uppercase letter, a digit,"}
end
