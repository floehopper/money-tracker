class CategoriesController < ApplicationController
  def search
    categories = Category.search(params[:term])
    render json: categories
  end
end
