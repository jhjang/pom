class CommentDecorator < ApplicationDecorator
  decorates :comment

  def created_at_deco
    model.created_at.strftime("%y")
  end

end
