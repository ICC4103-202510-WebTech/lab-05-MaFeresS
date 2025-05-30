class ChatsController < ApplicationController
  before_action :authenticate_user!
  def index
    @chats=Chat.all
  end
  def show
    @chat=Chat.find(params["id"])
    @messages=Message.where(chat_id: @chat.id)
  end
  def new
    @chat=Chat.new
    @users=User.all.ids
  end
  def create
    @chat=Chat.new chat_params
    @chat.sender_id=current_user.id
    if @chat.save
      redirect_to chats_path
    else
      redirect_to new_chat_path
    end
  end
  def edit
    @chat=Chat.find(params["id"])
    @users=User.all.ids
  end
  def update
    @chat=Chat.find(params["id"])
    @chat.sender_id=current_user.id

    if @chat.update(chat_params)
      if @chat.save
        redirect_to chat_path
      else
        redirect_to edit_chat_path
      end
    end
  end

  private
  def chat_params
    params.require(:chat).permit(:receiver_id)
  end
end