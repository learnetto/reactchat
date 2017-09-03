class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = @chatroom.messages.new(message_params)
    @message.user = current_user
    if @message.save
      ChatroomChannel.broadcast_to(@chatroom,
        message: MessagesController.render(
          partial: "messages/message.json",
          locals: { message: @message }))
    end
  end

  private
  def message_params
    params.require(:message).permit(:body, :chatroom_id, :user_id)
  end
end
