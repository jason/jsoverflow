class Answer < ActiveRecord::Base
  attr_accessible :accepted, :body, :question_id
  belongs_to :user
  belongs_to :question
  has_many :votes, :as => :votable
  has_many :comments, :as => :commentable
  has_many :codes, :as => :codable
end
