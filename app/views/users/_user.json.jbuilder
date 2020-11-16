json.extract! user, :id, :name, :account_name, :email, :is_admin, :balance, :created_at, :updated_at
json.url user_url(user, format: :json)
