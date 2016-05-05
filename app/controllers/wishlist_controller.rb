class WishlistController < ApplicationController
    def new
        @wishlist = Wishlist.new
    end

    def index
        @wishlists = Wishlist.all
    end

    def show
        @wishlist = Wishlist.find(params[:id])
    end
    
    def create
        @wishlist = Wishlist.new(wishlist_params)
        
        if @wishlist.save
            redirect_to @wishlist
        else
            render 'new'
        end
    end
    
    private
        def wishlist_params
            params.require(:wishlist).permit(:title , :description)
        end
end
