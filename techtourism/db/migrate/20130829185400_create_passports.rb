class CreatePassports < ActiveRecord::Migration
  def change
    create_table :passports do |t|
        t.integer :person_id
        t.timestamps
    end
  end
end
