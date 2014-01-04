class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :category
      t.string :content
      t.integer :writer_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
