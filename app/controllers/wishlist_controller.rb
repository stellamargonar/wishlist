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
    
    def edit
        @wishlist = Wishlist.find(params[:id])
    end
    
    def create
        @wishlist = Wishlist.find(wishlist_params)
        
        if @wishlist.save(wishlist_params)
            redirect_to @wishlist
        else
            render 'new'
        end
    end
    
    def update
        @wishlist = Wishlist.find(params[:id])
        
        if @wishlist.update(wishlist_params)
            redirect_to @wishlist
        else
            render 'edit'
        end
    end
    
    private
        def wishlist_params
            params.require(:wishlist).permit(:title , :description)
        end
end
