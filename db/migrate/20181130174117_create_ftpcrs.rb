class CreateFtpcrs < ActiveRecord::Migration[5.2]
  def change
  	drop_table :ftpcrs
    create_table :ftpcrs do |t|
      t.string :ip
      t.string :username
      t.string :password
      t.string :source_location

      t.timestamps
    end
  end
end
