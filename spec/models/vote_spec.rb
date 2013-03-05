require 'spec_helper'

belongs_to :vote_types
belongs_to :user
belongs_to :votable, :polymorphic => true

describe Vote do
  pending "add some examples to (or delete) #{__FILE__}"
end
