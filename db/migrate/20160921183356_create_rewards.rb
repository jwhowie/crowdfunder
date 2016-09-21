class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :title
      t.integer :amount
      t.text :description
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
