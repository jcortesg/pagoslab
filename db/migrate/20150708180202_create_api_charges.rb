class CreateApiCharges < ActiveRecord::Migration
  def change
    create_table :api_charges do |t|
      t.integer :amount
      t.string :currency
      t.string :source
      t.string :description

      t.timestamps null: false
    end
  end
end
