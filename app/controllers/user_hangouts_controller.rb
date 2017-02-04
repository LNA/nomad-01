class UserHangoutsController < ApplicationController
  before_action :set_user_hangout, only: [:show, :update, :destroy]

  # GET /user_hangouts
  def index
    @user_hangouts = UserHangout.all

    render json: @user_hangouts
  end

  # GET /user_hangouts/1
  def show
    render json: @user_hangout
  end

  # POST /user_hangouts
  def create
    @user_hangout = UserHangout.new(user_hangout_params)

    if @user_hangout.save
      render json: @user_hangout, status: :created, location: @user_hangout
    else
      render json: @user_hangout.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_hangouts/1
  def update
    if @user_hangout.update(user_hangout_params)
      render json: @user_hangout
    else
      render json: @user_hangout.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_hangouts/1
  def destroy
    @user_hangout.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_hangout
      @user_hangout = UserHangout.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_hangout_params
      params.require(:user_hangout).permit(:user, :hangout)
    end
end
