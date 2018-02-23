class CreateThoughts < ActiveRecord::Migration[5.1]
  def change
    create_table :thoughts do |t|
      t.datetime :date
      t.string :name
      t.text :entry
      t.string :picture

      t.timestamps
    end
  end
end
