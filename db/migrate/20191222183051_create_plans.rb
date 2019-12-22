class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.date :start_date
      t.date :end_date
      t.string :name

      t.timestamps
    end
  end
end
