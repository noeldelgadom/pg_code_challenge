class CreateConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :conditions do |t|
      t.string :name
      t.integer :increase

      t.timestamps
    end
  end
end
