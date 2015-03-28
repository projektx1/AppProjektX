class AddAttachmentPictureToContests < ActiveRecord::Migration
  def self.up
    change_table :contests do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :contests, :picture
  end
end
