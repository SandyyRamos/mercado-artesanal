class DropSales < ActiveRecord::Migration[7.1]
  def change
    drop_table :sales 
  end
end