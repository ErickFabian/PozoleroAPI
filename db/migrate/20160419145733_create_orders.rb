class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :client
      t.text :note
      t.integer :total

      t.timestamps
    end
  end
end
