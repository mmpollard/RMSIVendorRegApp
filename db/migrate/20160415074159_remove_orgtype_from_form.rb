class RemoveOrgtypeFromForm < ActiveRecord::Migration
  def change
    remove_column :forms, :orgtype
  end
end
