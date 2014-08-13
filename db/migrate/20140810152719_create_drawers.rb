class CreateDrawers < ActiveRecord::Migration
  def change
    create_table :drawers do |t|
      t.string :DrawerTitle
      t.integer :TargetAmount
      t.date :TargetDate

      t.timestamps
    end
  end
end
