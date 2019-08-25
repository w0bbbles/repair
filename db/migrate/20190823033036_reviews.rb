class Reviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :review
      t.integer :rating
      t.references :item
      t.references :repairer
      t.references :user_id

      t.timestamps
    end
  end
end