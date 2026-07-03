class CreatePlans < ActiveRecord::Migration[7.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.datetime :start_day
      t.datetime :end_day
      t.boolean :all_day

      t.timestamps
    end
  end
end
