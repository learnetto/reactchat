json.(chatroom, :name, :id)
json.messages(chatroom.messages
                .sort_by{|m| m[:created_at]}) do |message|
  json.extract! message, :id, :body
  json.user do
    json.extract! message.user, :id, :name, :image
  end
end
