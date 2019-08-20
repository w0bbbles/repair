class Items < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      #t.references :user
      t.text :description
      t.boolean :repairing
      t.boolean :completed
      t.text :repairer
      t.string :image
      t.timestamps
    end
  end
end