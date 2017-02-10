class CreateCookies < ActiveRecord::Migration[5.0]
  def change
    create_table :cookies do |t|
      t.string :title
      t.string :price
      t.integer :quantity
      t.string :ingredients

      t.timestamps
    end
  end
end
