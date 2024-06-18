class ModifyFieldPhoneNumberForUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :phone_number, :integer
    add_column :users, :phone_number, :string
  end
end
