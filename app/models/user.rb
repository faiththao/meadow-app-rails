class User < ApplicationRecord
    has_many :listings
    has_many :saved_listings, through: :listings
    
    has_secure_password

    validates :email, presence: true
    validates :password, presence: true, length: {minimum: 8}
end
