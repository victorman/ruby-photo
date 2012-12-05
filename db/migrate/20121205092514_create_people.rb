class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name, :type, :email, :camera
      t.timestamps
    end
  end
end
