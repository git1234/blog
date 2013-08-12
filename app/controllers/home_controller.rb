class HomeController < ApplicationController
  def index
  	if current_blog_user
  		session[:login] = current_blog_user.id
 	end
  end
end
