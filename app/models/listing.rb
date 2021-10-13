class Listing < ApplicationRecord
    has_many :users
    has_many :saved_listings, through: :users

    validates :address, presence: true, uniqueness: true
end
