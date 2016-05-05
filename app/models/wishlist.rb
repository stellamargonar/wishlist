class Wishlist < ActiveRecord::Base
    has_many :items, dependent: :destroy
    validates :title,   presence: true,
                        length: {minimum: 3}
end
