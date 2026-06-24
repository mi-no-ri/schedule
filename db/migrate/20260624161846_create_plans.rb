class CreatePlans < ActiveRecord::Migration[7.2]
  def change
    create_table :plans do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.boolean :all_day

      t.timestamps
    end
  end
end
