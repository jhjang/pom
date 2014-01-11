module CommentsHelper
  def options_for_category_select
    categories = Category.all.map { |category| category.name }
    categories << "신규 등록"
    options_for_select(categories) 
  end
end
