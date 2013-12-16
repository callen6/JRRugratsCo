class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.text :description
      t.text :location
      t.text :status
      t.text :tenant_notes
      t.text :admin_notes
      t.decimal :cost
      t.datetime :completion_date
      t.belongs_to :contractor, index: true
      t.belongs_to :building, index: true
      t.belongs_to :user, index: true
    end
  end
end
