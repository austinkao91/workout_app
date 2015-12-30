json.array!(@exercise_names) do |exercise_name|
  json.extract! exercise_name, :id, :name
end
