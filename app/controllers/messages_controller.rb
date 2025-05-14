class MessagesController < ApplicationController
  def index
    @messages=Message.all
  end
  def show
    @message=Message.find(params["id"])
    @user=User.find(@message.user_id)
  end
  def new
    @message=Message.new
    @users=User.all.ids
    @chats=Chat.all.ids
  end
  def create
    @message=Message.new message_params
    if message.save
      redirect_to message_path
    else
      redirect_to new_message_path
    end
  end
    def edit
    @message=Message.find(params["id"])
    @users=User.all.ids
    @chats=Chat.all.ids
  end
  def update
    @message=Message.find(params["id"])

    if @message.update(message_params)
      if @message.save
        redirect_to message_path
      else
        redirect_to edit_message_path
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(:body,:chat_id,:user_id)
  end
end