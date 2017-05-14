class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :email  ,null:false
      t.string :phone  ,null:false
      t.string :license

      t.timestamps null: false
    end
  end
end
