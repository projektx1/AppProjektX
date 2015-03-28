json.array!(@rewards) do |reward|
  json.extract! reward, :id, :rewardName
  json.url reward_url(reward, format: :json)
end
