class AddCookieIdToPicture < ActiveRecord::Migration[5.0]
  def change
    add_column :pictures, :cookie_id, :integer
  end
end
