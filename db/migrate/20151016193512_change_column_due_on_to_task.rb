class ChangeColumnDueOnToTask < ActiveRecord::Migration
  def change
    remove_column :tasks, :due_on, :date
    add_column :tasks, :due_on, :date
  end
end
