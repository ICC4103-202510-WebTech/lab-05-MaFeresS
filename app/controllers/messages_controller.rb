class MessagesController < ApplicationController
  def index
    @messages=Message.all
  end
  def show
    @message=Message.find(params["id"])
  end
  def create
    @message=Message.new message_params
    if message.save
      redirect_to message_path
    else
      redirect_to new_message_path
    end
  end
  def new
    @message=Message.new
    @users=User.all.ids
    @chats=Chat.all.ids
  end

  private
  def message_params
    params.require(:message).permit(:body,:chat_id,:user_id)
  end
end