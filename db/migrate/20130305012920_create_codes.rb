class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.text :content
      t.integer :code_type_id

      t.timestamps
    end
  end
end
