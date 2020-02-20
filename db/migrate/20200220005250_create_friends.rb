class CreateFriends < ActiveRecord::Migration[6.0]
  def change
    create_table :friends do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.date :birth
      t.boolean :living

      t.timestamps
    end
  end
end
