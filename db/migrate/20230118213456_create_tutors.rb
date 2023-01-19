class CreateTutors < ActiveRecord::Migration[7.0]
  def change
    create_table :tutors do |t|
      t.string :name
      t.string :degree
      t.string :description
      t.string :email
      t.string :location
      t.boolean :is_remote
      t.string :phone_number
      t.date :start_date
      t.string :subject
      t.integer :user_id

      t.timestamps
    end
  end
end
