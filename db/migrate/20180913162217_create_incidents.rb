class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.references :school, foreign_key: true
      t.text :description
      t.references :user, foreign_key: true
      t.text :people_involved
      t.text :other_observers
      t.string :date_time
      t.string :location

      t.timestamps
    end
  end
end
