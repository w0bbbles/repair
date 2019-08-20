class Items < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :itemname
      t.text :description
      t.boolean :repairing
      t.boolean :completed
      t.integer :repairer
      t.timestamps
    end
  end
end