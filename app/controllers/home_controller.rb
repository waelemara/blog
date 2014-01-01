class HomeController < ApplicationController
  layout 'application_home', :only => [:index]


 def index
   @posts = Post.all
 end 
end
