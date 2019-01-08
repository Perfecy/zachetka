json.extract! last, :id, :name, :manager, :description, :date, :image, :created_at, :updated_at
json.url last_url(last, format: :json)
