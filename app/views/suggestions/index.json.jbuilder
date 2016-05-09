json.array!(@suggestions) do |suggestion|
  json.extract! suggestion, :id, :user_1, :user_2, :accepted_by_user_1, :accepted_by_user_2
  json.url suggestion_url(suggestion, format: :json)
end
