class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.integer :phone
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
