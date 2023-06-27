class CreateGarments < ActiveRecord::Migration[7.0]
  def change
    create_table :garments do |t|
      t.string :name, null: false
      t.string :brand, null: false
      t.integer :size, null: false
      t.date :date_of_purchase, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
