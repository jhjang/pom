class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :receiver, :class_name => "User", :foreign_key => "receiver_id"



  def self.search(user_id)
    if !user_id.nil?
    where(:receiver_id => user_id) 
    else
      all
    end
  end
end
