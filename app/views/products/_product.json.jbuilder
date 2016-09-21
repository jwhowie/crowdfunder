json.extract! product, :id, :title, :description, :goal, :start_date, :end_date, :user_id, :tags, :created_at, :updated_at
json.url product_url(product, format: :json)