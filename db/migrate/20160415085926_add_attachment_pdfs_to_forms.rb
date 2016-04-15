class AddAttachmentPdfsToForms < ActiveRecord::Migration
  def self.up
    change_table :forms do |t|
      t.attachment :DD214
      t.attachment :facility_op_form
      t.attachment :kitchen_contract
    end
  end

  def self.down
    remove_attachment :forms, :DD214
    remove_attachment :forms, :facility_op_form
    remove_attachment :forms, :kitchen_contract
  end
end
