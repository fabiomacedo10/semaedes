class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.string :title
      t.string :status
      t.string :picture
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
