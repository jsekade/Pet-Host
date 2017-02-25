json.extract! user, :id, :name, :surname, :telephone, :email, :street, :city, :postal_code, :created_at, :updated_at
json.url user_url(user, format: :json)
