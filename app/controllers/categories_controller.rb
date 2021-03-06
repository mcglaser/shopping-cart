class CategoriesController < ApplicationController
 


  def new
  	@category = Category.new
  end


  def show
    @category = Category.find(params[:id])
  end



  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
    render 'new'
     end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end


  def index
    @categories = Category.all
  end


  def destroy
    Category.find(params[:id]).destroy
    redirect_to root_url
  end


  

  private
  

    def category_params
      params.require(:category).permit(:category_name)
    end



end