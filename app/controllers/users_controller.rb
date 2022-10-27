class UsersController < ApplicationController
  before_action :set_user, only: %i[ show update destroy ]
  skip_before_action :authorize, only: :create

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  def authenticateuser
    @current_user = User.find_by(id: session[:user_id])
    render json: @current_user, status: :created
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:username, :password_digest, :type, :firstname, :lastname, :date_of_birth, :email, :phone, :title, :needs, :interests, :stage, :emer_name, :emer_phone, :dorm_id, :manager_id)
    end
end
