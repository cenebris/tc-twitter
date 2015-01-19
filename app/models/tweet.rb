class Tweet < ActiveRecord::Base

belongs_to :user
has_many :comments


has_attached_file :image, :styles => { :medium => "200x200>", :large => "1000x1000>" }, :default_url => "/images/:style/missing.png"
validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/




def to_s
body
end

end
