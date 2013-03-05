class AddCodableToCode < ActiveRecord::Migration
  def change
  	change_table :codes do |t|
  		t.references :codable, :polymorphic => true
  	end
  end
end
