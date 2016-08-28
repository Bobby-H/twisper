class PagesController < ApplicationController
  def index
  end

  def home
    @posts = Post.all
  end

  def profile
    @posts = Post.all
  end

  def explore
    @posts = Post.all
  end

  def help
  end

  def edit
  end
end
