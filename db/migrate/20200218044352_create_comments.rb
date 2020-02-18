class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.column :comment_text, :string
      t.column :user_id, :string
      t.column :photo_id, :string
      t.column :date_time, :date

      t.timestamps
    end
  end
end
