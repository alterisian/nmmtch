class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.integer :user_1
      t.integer :user_2
      t.boolean :accepted_by_user_1
      t.boolean :accepted_by_user_2

      t.timestamps
    end
  end
end
