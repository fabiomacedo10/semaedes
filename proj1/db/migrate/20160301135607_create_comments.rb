class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.integer :issue_id

      t.timestamps null: false
    end
    add_foreign_key :comments, :issues
  end
end
