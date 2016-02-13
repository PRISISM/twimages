class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def index
  end

  def create
  	if (params[:name][0] == '@') 
  		params[:name] = params[:name][1..-1]
  	end

    if !valid(params[:name])
      flash[:notice] = "You have entered an invalid Twitter name."
      redirect_to root_url
    end
  end

  def valid(name)
    if (name.length > 15 || name.length == 0)
      return false
    elsif (name.match('\W')) # Check for non alphanumeric or underscore
      return false
    else
      return true
    end
  end
end
