class Wishlist < ActiveRecord::Base
    has_many :items
    validates :title,   presence: true,
                        length: {minimum: 3}
end
