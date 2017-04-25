class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name 
      t.string :last_name
      t.string :email , null:false
      t.string :phone , null:false
      t.boolean :status
      t.integer :doctor_id

      t.timestamps null: false
    end
  end
end
