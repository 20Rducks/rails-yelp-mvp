class RenamePhoneToPhoneNumber < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phone, :phone_number
  end
end
