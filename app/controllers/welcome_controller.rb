class WelcomeController < ApplicationController
	before_filter :login_required, :only => :index
  def index

  end

  def login_required
  	unless session[:user_id]
  		render 'login', layout: 'login' 	
  	end
  end
end
