class AddNameDescriptionWebsitePhoneToAccount < ActiveRecord::Migration
  def change
    add_column :accounts, :name, :string
    add_column :accounts, :description, :string
    add_column :accounts, :website, :string
    add_column :accounts, :phone, :string
  end
end
