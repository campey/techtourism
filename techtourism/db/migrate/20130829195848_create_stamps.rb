class CreateStamps < ActiveRecord::Migration
  def change
    create_table :stamps do |t|
      t.string :description
      t.integer :person_id
      t.integer :passport_id
      t.timestamps
    end
  end
end
