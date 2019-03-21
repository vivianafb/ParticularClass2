json.extract! post, :id, :subject, :city, :created_at, :updated_at
json.url post_url(post, format: :json)
