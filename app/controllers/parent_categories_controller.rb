class ParentCategoriesController < ApplicationController
	def index
    @parent_categories = ParentCategory.all
  end

  def show 
    @parent_category = ParentCategory.find(params[:id])
  end

  def new
    @parent_category = ParentCategory.new
  end

  def create
    @parent_category = ParentCategory.new(parent_category_params) 

    if @parent_category.save
      redirect_to perent_categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit
    @parent_category = ParentCategory.find(params[:id])
  end

  def update
    @parent_category = ParentCategory.find(params[:id])

    if @parent_category.update(category_params)
      redirect_to @parent_category
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @parent_category = ParentCategory.find(params[:id])
    @parent_category.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def parent_category_params
      params.require(:parent_category).permit(:name)
    end
end
