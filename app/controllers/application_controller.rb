class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_filter :loader

  def index
  end

  def create
  	if (params[:name][0] == '@') 
  		params[:name] = params[:name][1..-1]
  	end
  end

  private

  def loader
  	load 'config/initializers/twitter_credentials.rb'
  end

end
