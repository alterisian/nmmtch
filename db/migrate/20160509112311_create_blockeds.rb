class CreateBlockeds < ActiveRecord::Migration
  def change
    create_table :blockeds do |t|
      t.string :ip
      t.string :domain
      t.string :email

      t.timestamps
    end
  end
end
