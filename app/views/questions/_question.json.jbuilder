json.extract! question, :id, :answer, :description, :created_at, :updated_at
json.url question_url(question, format: :json)
