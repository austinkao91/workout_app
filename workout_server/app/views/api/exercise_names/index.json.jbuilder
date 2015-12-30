json.array!(@exercise_names) do |exercise_name|
  json.extract! exercise_name, :id, :name
  json.url exercise_name_url(exercise_name, format: :json)
end
