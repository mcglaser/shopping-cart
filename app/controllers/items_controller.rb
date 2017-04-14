class ItemsController < ApplicationController
 


  def new
  	@item = Item.new
  end


  def show
    @item = Item.find(params[:id])
  end



  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to @item
    else
    render 'new'
     end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
      redirect_to @item
    else
      render 'edit'
    end
  end


  def index
    @item = Item.all
  end


  def destroy
    Item.find(params[:id]).destroy
    redirect_to root_url
  end


  

  private
  

    def item_params
      params.require(:item).permit(:category_id, :item_name, :item_description, :item_price)
    end



end