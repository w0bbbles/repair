class CreateLandingpages < ActiveRecord::Migration[5.2]
  def change
    create_table :landingpages do |t|

      t.timestamps
    end
  end
end
