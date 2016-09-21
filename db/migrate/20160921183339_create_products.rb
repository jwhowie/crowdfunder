class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :goal
      t.datetime :start_date
      t.datetime :end_date
      t.references :user, index: true, foreign_key: true
      t.string :tags

      t.timestamps null: false
    end
  end
end
