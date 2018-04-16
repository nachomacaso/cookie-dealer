class AddDescriptionToCookies < ActiveRecord::Migration[5.0]
  def change
    add_column :cookies, :description, :string
  end
end
