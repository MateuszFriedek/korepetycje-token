json.extract! review, :id, :creation_date, :review, :tutor_id, :student_id, :created_at, :updated_at
json.url review_url(review, format: :json)
