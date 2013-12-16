class CreateContractors < ActiveRecord::Migration
  def change
    create_table :contractors do |t|
      t.text :full_name
      t.string :phone_number
      t.text :email
    end
  end
end
