class PostsController < ApplicationController
  layout 'application_admin', :only => [:new]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  
  def index
    @posts = Post.all
  end
  
  def new
    @post = Post.new
  end
  
  def create    
    @post = Post.new(post_params)
    respond_to do |format|
         if @post.save
           format.html { redirect_to @post, notice: 'Post was successfully created.' }
           format.json { render action: 'show', status: :created, location: @post }
         else
           format.html { render action: 'new' }
           format.json { render json: @post.errors, status: :unprocessable_entity }
         end
    end
  end
  
  
  def show
  end
    
  private
    def set_post
        @post = Post.find(params[:id])
    end
    def post_params
          params.require(:post).permit(:title, :description , :body)
    end
end