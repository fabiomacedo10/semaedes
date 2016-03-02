class CreateDsqus < ActiveRecord::Migration
  def change
    create_table :dsqus do |t|
      t.string :user_name
      t.text :body
      t.integer :issue_id

      t.timestamps null: false
    end
  end
end
