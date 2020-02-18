class UserController < ApplicationController
  def index
    @users_all= User.all
  end
  def picture
    @photos = User.find(params[:id]).photos
    @names = User.find(params[:id])
  end
end
