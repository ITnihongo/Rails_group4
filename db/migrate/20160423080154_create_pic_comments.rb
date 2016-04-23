class CreatePicComments < ActiveRecord::Migration
  def change
    create_table :pic_comments do |t|
      t.integer :user_id
      t.integer :pic_id
      t.string :commemt

      t.timestamps null: false
    end
  end
end
