class ItemsController < ApplicationController
    def show
    end
    
    def new
    end
    
    def create
        @wishlist = Wishlist.find(params[:wishlist_id])
        @item = @wishlist.items.create(item_params)
        redirect_to wishlist_path(@wishlist)
    end
    
    private
        def item_params
            params.require(:item).permit(:name, :url, :price, :active)
        end
    end
