class AddAttachmentImageToCookies < ActiveRecord::Migration
  def self.up
    change_table :cookies do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cookies, :image
  end
end
