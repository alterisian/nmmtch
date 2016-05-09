class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.string :gender
      t.string :gender_looking_for
      t.string :location
      t.string :next_locations
      t.string :future_locations
      t.text :interests

      t.timestamps
    end
  end
end
