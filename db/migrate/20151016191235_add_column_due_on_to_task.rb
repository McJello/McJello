class AddColumnDueOnToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :due_on, :date
  end
end
