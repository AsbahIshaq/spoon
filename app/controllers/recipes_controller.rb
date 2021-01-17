class RecipesController < ApplicationController
  def index
    @page_num = strong_params[:page] || 1
    @recipes  = Recipe.load_page(@page_num, ENV['RECIPES_PER_PAGE'])
    
    if @recipes
      @total_pages = @recipes.total / ENV['RECIPES_PER_PAGE'].to_i

      if @page_num.to_i > @total_pages
        render_404
      else
        respond_to do |format|
          format.html
          format.js
        end
      end
    else
      render_server_error
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def strong_params
    params.permit(:page)
  end
end