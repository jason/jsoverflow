class Question < ActiveRecord::Base
  attr_accessible :body, :title
  has_many :votes, :as => :votable
  has_many :answers
  has_many :comments, :as => :commentable
  has_many :codes, :as => :codable
end
