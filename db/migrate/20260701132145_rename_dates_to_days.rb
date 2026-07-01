class RenameDatesToDays < ActiveRecord::Migration[7.2]
  def change
    rename_column :plans, :start_date, :start_day
    rename_column :plans, :end_date, :end_day
  end
end
