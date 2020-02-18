class PhotoController < ApplicationController
  def index
    @photos = User.find(params[:id]).photos

  end

end
