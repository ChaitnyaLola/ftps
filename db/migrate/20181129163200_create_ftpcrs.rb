class CreateFtpcrs < ActiveRecord::Migration[5.2]
  def change
  	drop_table :ftpcrs
    create_table :ftpcrs do |t|
      t.string :dname
      t.string :uname
      t.string :pw

      t.timestamps
    end
  end
end
