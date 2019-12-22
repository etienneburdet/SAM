class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.date :date
      t.text :description
      t.references :plan, foreign_key: true

      t.timestamps
    end
  end
end
