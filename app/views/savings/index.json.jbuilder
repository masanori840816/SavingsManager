json.array!(@savings) do |saving|
  json.extract! saving, :id, :DrawerID, :AddedSaving, :AddedDate
  json.url saving_url(saving, format: :json)
end
