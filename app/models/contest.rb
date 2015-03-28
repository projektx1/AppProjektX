class Contest < ActiveRecord::Base
	
	  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
	  							:url => "/assets/contest/:id/:style/:basename.:extension",
								:path => ":rails_root/public/assets/contest/:id/:style/:basename.:extension",
								:default_url => "/images/:style/missing.png"
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :picture, :less_than => 330.kilobytes

 before_create :set_creationDate_now
  

  def set_creationDate_now
    self.creationDate = Time.now
  end

end
