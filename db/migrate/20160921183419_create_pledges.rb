class CreatePledges < ActiveRecord::Migration
  def change
    create_table :pledges do |t|
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.references :reward, index: true, foreign_key: true
      t.integer :amount

      t.timestamps null: false
    end
  end
end
