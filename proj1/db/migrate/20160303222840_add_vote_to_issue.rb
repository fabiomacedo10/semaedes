class AddVoteToIssue < ActiveRecord::Migration
  def change
    add_column :issues, :vote, :string
  end
end
