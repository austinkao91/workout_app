json.array!(@exercises) do |exercise|
  json.extract!(exercise, :id, :name)
end
