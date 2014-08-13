class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|
      t.string :DrawerID
      t.integer :AddedSaving
      t.date :AddedDate

      t.timestamps
    end
  end
end
