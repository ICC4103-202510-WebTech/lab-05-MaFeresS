class MessagesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
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
    @chats=Chat.where(sender_id: current_user.id).or(Chat.where(receiver_id: current_user.id)).ids
  end
  def create
    @message=Message.new message_params
    @message.user_id=current_user.id
    if @message.save
      redirect_to messages_path
    else
      redirect_to new_message_path
    end
  end
    def edit
    @message=Message.find(params["id"])
    @users=User.all.ids
    @chats=Chat.where(sender_id: current_user.id).or(Chat.where(receiver_id: current_user.id)).ids
  end
  def update
    @message=Message.find(params["id"])
    @message.user_id=current_user.id

    if @message.update(message_params)
      if @message.save
        redirect_to messages_path
      else
        redirect_to edit_message_path
      end
    end
  end

  private
  def message_params
    params.require(:message).permit(:body,:chat_id)
  end
end