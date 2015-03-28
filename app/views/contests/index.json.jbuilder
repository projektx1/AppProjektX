json.array!(@contests) do |contest|
  json.extract! contest, :id, :contestName, :shortDescription, :fullDescription, :beginDate, :endDate, :creationDate, :isActive, :isStandardMode, :isPromotedMode, :isVIPMode, :URL, :picture
  json.url contest_url(contest, format: :json)
end
