class CodeType < ActiveRecord::Base
  attr_accessible :name
  has_many :codes
end
