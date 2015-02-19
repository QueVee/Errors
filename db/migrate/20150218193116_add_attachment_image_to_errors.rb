class AddAttachmentImageToErrors < ActiveRecord::Migration
  def self.up
    change_table :errors do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :errors, :image
  end
end
