json.extract! checkin, :id, :date, :mood, :sleep, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
