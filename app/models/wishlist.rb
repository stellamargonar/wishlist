class Wishlist < ActiveRecord::Base
    validates :title,   presence: true,
                        length: {minimum: 3}
    def new
    end
end
