class CreateGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :goals do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :active
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
