class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :mobilephone
      t.string :email

      t.timestamps
    end
  end
end
