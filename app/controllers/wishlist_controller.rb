class WishlistController < ApplicationController
    def new
    end

    def show
        @wishlist = Wishlist.find(params[:id])
    end
    
    def create
        @wishlist = Wishlist.new(wishlist_params)
        @wishlist.save
        
        redirect_to @wishlist
    end
    
    private
        def wishlist_params
            params.require(:wishlist).permit(:title , :description)
        end
end
