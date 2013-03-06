class Question < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  has_many :votes, :as => :votable
  has_many :answers
  has_many :comments, :as => :commentable
  has_many :codes, :as => :codable

  scope :recent, where(:created_at => 5.days.ago)

  
end
