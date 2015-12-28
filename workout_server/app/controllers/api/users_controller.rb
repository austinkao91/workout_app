class Api::UserController < ApplicationController
  def show
    @user = User.find_by(id: params[:id])
    render :show
  end


  def update

  end

  private
  def user_params
    params.require(:user).permit(:image_url, :bookMark)
  end
end
