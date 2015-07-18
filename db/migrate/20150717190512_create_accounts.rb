class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :key
      t.string :secret

      t.timestamps null: false
    end
  end
end
