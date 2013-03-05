class AddVotableReferenceToVotes < ActiveRecord::Migration
  def change
  	change_table :votes do |t|
  		t.references :votable, :polymorphic => true
  	end
  end
end
