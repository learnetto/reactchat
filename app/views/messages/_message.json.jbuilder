json.(message, :body, :id)
json.user do
  json.extract! message.user, :id, :name, :image
end
