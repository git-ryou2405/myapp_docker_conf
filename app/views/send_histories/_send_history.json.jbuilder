json.extract! send_history, :id, :from_user_id, :to_user_id, :amount, :send_type, :created_at, :updated_at
json.url send_history_url(send_history, format: :json)
