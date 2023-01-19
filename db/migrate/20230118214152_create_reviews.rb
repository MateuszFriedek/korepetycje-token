class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.date :creation_date
      t.string :review
      t.integer :tutor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
