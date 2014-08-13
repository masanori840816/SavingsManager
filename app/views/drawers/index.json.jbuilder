json.array!(@drawers) do |drawer|
  json.extract! drawer, :id, :DrawerTitle, :TargetAmount, :TargetDate
  json.url drawer_url(drawer, format: :json)
end
