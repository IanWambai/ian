json.array!(@sites) do |site|
  json.extract! site, :id, :urls, :comments
  json.url site_url(site, format: :json)
end
