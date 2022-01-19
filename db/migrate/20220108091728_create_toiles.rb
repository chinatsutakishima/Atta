class CreateToiles < ActiveRecord::Migration[6.1]
  def change
    create_table :toiles do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.text :body2
      t.text :body3
      t.string :image_id

      t.timestamps
    end
  end
end
