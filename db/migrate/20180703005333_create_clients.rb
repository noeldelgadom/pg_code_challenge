class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string      :name,      null: false
      t.integer     :age,       null: false
      t.references  :gender,    foreign_key: true
      t.references  :condition, foreign_key: true
      t.float       :quote,     default: 0.0

      t.timestamps
    end
  end
end
