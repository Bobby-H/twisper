class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
      # redirect_to 404
      redirect_to root_path, :notice => 'User not found!'
    end
  end

  def explore
  end

  def help
  end

  def edit
  end
end
