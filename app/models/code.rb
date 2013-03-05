class Code < ActiveRecord::Base
  attr_accessible :code_type_id, :content
  belongs_to :codable, :polymorphic => true
  belongs_to :code_type
end
