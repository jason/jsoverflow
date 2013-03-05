class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_type_id
      t.integer :user_id
      t.integer :question_id
      t.integer :answer_id
      t.timestamps
    end
  end
end
