class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :body
      t.boolean :accepted
      t.integer :question_id
      t.integer :user_id
      t.timestamps
    end
  end
end
