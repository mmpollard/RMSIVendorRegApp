class AddPNumToForm < ActiveRecord::Migration
  def change
    add_column :forms, :permitNum, :string
  end
end
