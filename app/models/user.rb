class User < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "450x450>", :thumb => "150x150>" }, :default_url => "/images/:style/missing.png" 
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
