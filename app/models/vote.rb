class Vote < ActiveRecord::Base
  attr_accessible :user_id, :vote_type_id

  belongs_to :vote_type
  belongs_to :user
  belongs_to :question
  belongs_to :answer
  belongs_to :votable, :polymorphic => true
end
