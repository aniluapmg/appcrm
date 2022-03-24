json.extract! prospect, :id, :name, :last_name, :phone, :email, :status, :created_at, :updated_at
json.url prospect_url(prospect, format: :json)
