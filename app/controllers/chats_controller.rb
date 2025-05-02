class ChatsController < ApplicationController
  def index
    @chats=Chat.all
  end
  def show
    @chat=Chat.find(params["id"])
  end
  def create
    @chat=Chat.new chat_params
    if chat.save
      redirect_to chat_path
    else
      redirect_to new_chat_path
    end
  end
  def new
    @chat=Chat.new
    @users=User.all.ids
  end

  private
  def chat_params
    params.require(:chat).permit(:sender_id,:receiver_id)
  end
end