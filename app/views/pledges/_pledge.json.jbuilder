json.extract! pledge, :id, :user_id, :product_id, :reward_id, :amount, :created_at, :updated_at
json.url pledge_url(pledge, format: :json)