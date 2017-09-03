class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
    ChatroomChannel.broadcast_to(
      chatroom,
      message: {
        body: current_user.name + " joined",
        user: {name: "chatbot"},
        className: "chatbot"
      }.to_json
    )
  end

  def unsubscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
    ChatroomChannel.broadcast_to(
      chatroom,
      message: {
        body: current_user.name + " left",
        user: {name: "chatbot"},
        className: "chatbot"
      }.to_json
    )
  end
end
