json.extract! tweet, :id, :zombie_id, :status, :created_at, :updated_at
json.url tweet_url(tweet, format: :json)
