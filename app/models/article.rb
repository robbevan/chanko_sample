class Article < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  attr_accessible :title, :content, :image, :user_id
  validates :title, :presence => true
  validates :content, :presence => true
end
