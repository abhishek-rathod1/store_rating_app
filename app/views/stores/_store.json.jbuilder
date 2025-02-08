json.extract! store, :id, :name, :email, :address, :owner_id, :created_at, :updated_at
json.url store_url(store, format: :json)
