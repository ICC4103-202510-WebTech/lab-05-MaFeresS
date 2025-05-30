class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @users=User.all
  end
  def show
    @user=User.find(params["id"])
    @chats=Chat.where(sender_id: @user.id)+Chat.where(receiver_id: @user.id)
    @messages=Message.where(user_id: @user.id)
  end
  def new
    @user=User.new
  end
  def create
    @user=User.new user_params
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    @user=User.find(params["id"])
  end
  def update
    @user=User.find(params["id"])
    
    if @user.update(user_params)
      if @user.save
        redirect_to users_path
      else
        redirect_to edit_user_path
      end
    end
  end
  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name)
  end
end