class Items < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :repairing
      t.boolean :completed
      t.string :image
      # t.integer :repairer
      # t.references :user
      t.timestamps
    end
  end
end