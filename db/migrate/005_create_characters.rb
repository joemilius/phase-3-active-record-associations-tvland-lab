class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    # Your code here
    create_table :characters do |t|
      t.string :name
      t.references :actor, foreign_key: true
      t.references :show, foreign_key: true
    end
  end
end
