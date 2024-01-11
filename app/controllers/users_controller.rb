class UsersController < ApplicationController

    skip_before_action :authenticate_request, only: [:create]
  
    def index
      @user = User.all
      render json: @user, each_serializer: UserSerializer
    end
  
    def show
      @user = User.find(params[:id])
      render json: @user, serializer: UserSerializer
    end
  
    def create
      # debugger
      @user = User.new(user_params)
        if @user.save
          render json: @user, serializer: UserSerializer
          UserMailer.create_ac(@user).deliver_now
        else
          render json: {error: "Record not created"},  status: :unprocessable_entity
        end
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        render json: @user, serializer: UserSerializer
        UserMailer.update_ac(@user).deliver_now
       else
        render json: {error: "Please Give me token!"},  status: :unprocessable_entity
       end
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      render json: @user, serializer: UserSerializer
      UserMailer.delete_ac(@user).deliver_now
    end
  
    private
    def user_params
        params.permit(:name, :email, :password)
    end

end
