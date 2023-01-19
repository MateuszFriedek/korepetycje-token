class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.date :start_date
      t.integer :user_id

      t.timestamps
    end
  end
end
