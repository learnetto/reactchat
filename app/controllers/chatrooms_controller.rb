class ChatroomsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @chatrooms = Chatroom.all
  end

  def show
    @chatroom = Chatroom.find(params[:id])
  end
end
