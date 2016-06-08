class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :cost
      t.text :description

      t.timestamps
    end
  end
end
