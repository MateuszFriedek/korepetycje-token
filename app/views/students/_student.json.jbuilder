json.extract! student, :id, :name, :email, :phone_number, :start_date, :user_id, :created_at, :updated_at
json.url student_url(student, format: :json)
