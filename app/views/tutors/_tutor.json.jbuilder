json.extract! tutor, :id, :name, :degree, :description, :email, :location, :is_remote, :phone_number, :start_date, :subject, :created_at, :updated_at
json.url tutor_url(tutor, format: :json)
