json.extract! photo, :id, :body, :image, :created_at, :updated_at
json.url photo_url(photo, format: :json)
