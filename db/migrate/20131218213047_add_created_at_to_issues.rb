class AddCreatedAtToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :created_at, :timestamp
  end
end
