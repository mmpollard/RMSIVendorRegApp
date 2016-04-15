class AddPdfsToForm < ActiveRecord::Migration
  def change
    add_column :forms, :kc_filename, :string
    add_column :forms, :kc_content_type, :string
    add_column :forms, :kc_file_contents, :binary
    add_column :forms, :dd_filename, :string
    add_column :forms, :dd_content_type, :string
    add_column :forms, :dd_file_contents, :binary
    add_column :forms, :ff_filename, :string
    add_column :forms, :ff_content_type, :string
    add_column :forms, :ff_file_contents, :binary
  end
end
