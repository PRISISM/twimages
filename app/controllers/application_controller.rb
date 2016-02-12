class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  # before_filter :authorize

  def index
  end

  def create
  	if (params[:name][0] == '@') 
  		params[:name] = params[:name][1..-1]
  	end
  end

#   private

#   def authorize
# 	$twitter = Twitter::REST::Client.new do |config|
# 	  config.consumer_key = 'UnS4RLlfnA8jSqckNYzYReu5W'
# 	  config.consumer_secret = 'o8MHGErwcmJMH7lNoqOq8XP1BweuL2V4oBkIhwcfMrrIzFBZGO'
# 	  config.access_token = '74698390-UfUN9Dt5gauPWVjYjKP1xrH3n980lCJvKxkgX5vfZ'
# 	  config.access_token_secret = 'pXb9yokpH9Y8pwdz4g6EXM035NJORfRQAnMiAaSRouUkd'
# 	end

# end

end
