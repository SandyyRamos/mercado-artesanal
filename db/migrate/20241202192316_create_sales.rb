class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.integer :quantity
      t.float :price
      t.float :total
      t.date :sale_date
      t.references :user, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
