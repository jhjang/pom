class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.string :category
      t.string :content
      t.integer :receiver_id

      t.timestamps
    end
  end
end
