class CreateListItems < ActiveRecord::Migration[5.0]
  def change
    create_table :list_items do |t|
      t.string :frequency
      t.text :description
      t.boolean :completed
      t.references :goal, foreign_key: true
      t.timestamps
    end
  end
end
