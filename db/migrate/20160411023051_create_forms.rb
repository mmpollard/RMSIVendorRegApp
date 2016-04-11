class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :orgtype        
      t.string :name       
      t.string :user
      t.string :email
      t.string :address
      t.string :city
      t.string :zip
      t.string :busphone
      t.string :cell
      t.string :website
      t.string :busID
      t.string :numTables
      t.string :numbrellas
      t.string :numChairs
      t.string :numTents
      t.string :resaleNum
      t.string :product
      t.string :taxID
      t.timestamps null: false
    end
  end
end
