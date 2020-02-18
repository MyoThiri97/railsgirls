class CreateStaffs < ActiveRecord::Migration[6.0]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
