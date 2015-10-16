class RenameColumnPositioninTableListstoPriority < ActiveRecord::Migration
  def change
    rename_column :lists, :position, :priority
  end
end
