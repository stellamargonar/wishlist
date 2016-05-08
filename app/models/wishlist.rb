class Wishlist < ActiveRecord::Base
    has_many :items, dependent: :destroy
    
    belongs_to :user
    
    validates :title,   presence: true,
                        length: {minimum: 3}
end
