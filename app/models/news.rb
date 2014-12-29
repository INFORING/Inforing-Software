class News < ActiveRecord::Base
  before_destroy :remove_attachment 
  validates :title,  presence: true
  validates :description,  presence: true

  has_attached_file :image, :styles => { :large => "600x600!", :medium => "300x300!", :thumb => "100x100!" }, :default_url => "logo.png"
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
  
  private

  def remove_attachment
  	self.image = nil
  	self.save
  end

end
