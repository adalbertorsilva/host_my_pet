class ChangePhoneIntegerToNumber < ActiveRecord::Migration
  def change
    change_column :users, :phone, :decimal, precision: 11
  end
end
