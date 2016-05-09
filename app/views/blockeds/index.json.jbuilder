json.array!(@blockeds) do |blocked|
  json.extract! blocked, :id, :ip, :domain, :email
  json.url blocked_url(blocked, format: :json)
end
