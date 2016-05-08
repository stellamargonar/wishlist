class WishlistsController < ApplicationController
    
    before_action :require_user
    
    def index
        @wishlists = Wishlist.all
    end
 
    def show
        @wishlist = Wishlist.find(params[:id])
    end
 
    def new
        @wishlist = Wishlist.new
    end
 
    def edit
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
 
    def update
        @wishlist = Wishlist.find(params[:id])
        if @wishlist.update(wishlist_params)
            redirect_to @wishlist
        else
            render 'edit'
        end
    end
    
    def destroy
        @wishlist = Wishlist.find(params[:id])
        @wishlist.destroy
        
        redirect_to wishlist_path
    end

    private
        def wishlist_params
            params.require(:wishlist).permit(:title, :description)
        end
    end