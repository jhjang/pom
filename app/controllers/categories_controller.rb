class CategoriesController < ApplicationController
  def create
    # 중복검사
    result = 1

    if Category.where(:name => params[:name]).blank?
      category = Category.new(:name => params[:name])
      if category.save!
        result = 0
      end
    end

    render :json => {:result => result }
  end
end
