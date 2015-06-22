class SecretsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @secrets = Secret.all
    # @secrets = Secret.where(user_id: session[:user_id])
    # @user = User.all
  end

  def new
    @user = User.find(session[:user_id])
    @secrets = @user.secrets
  end

  def create
    # @user = User.all
    user = User.find(secret_params[:id].to_i)
    @secret = Secret.create(content: secret_params[:content], user: user)
    redirect_to '/secrets/new'
  end

  def show

  end

  def edit
  end

  def update
  end

  def destroy
    # user = User.find(secret_params[:id].to_i)
    # puts params[:id]
    @secret = Secret.find(params[:id])
    @secret.destroy
    redirect_to '/secrets/new'
  end

  private
    def secret_params
      params.require(:secret).permit(:content, :id, :user_id)
    end
end
