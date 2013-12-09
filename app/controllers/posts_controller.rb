class PostsController < ApplicationController
  layout 'application_admin', :only => [:new]
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
end

