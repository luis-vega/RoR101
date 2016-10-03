class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.date :born_date
      
      t.timestamps null: false
    end
  end
end
