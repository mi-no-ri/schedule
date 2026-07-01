class RenameStartAndEndToDates < ActiveRecord::Migration[7.2]
  def change
    rename_column :plans, :start, :start_day
    rename_column :plans, :"end", :end_day
  end
end
