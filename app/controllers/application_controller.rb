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
      flash[:notice] = 
      "You have entered an invalid Twitter name."
      return redirect_to :action => 'index'
    end

    if ($twitter.user(params[:name]).protected?)
      flash[:notice] = 
      "This Twitter account is protected."
      return redirect_to :action => 'index'
    end

    feedify(params[:name])
    no_photos(@feed)
    
  end

  private

  def feedify(name)
    @feed = $twitter.user_timeline(name) 
    @feed = @feed.shuffle 
    @feed.delete_if {|tweet| !tweet.media? } 
  end

  def no_photos(feed)
    if feed.empty?
      flash[:notice] = 
      "This Twitter timeline has no photos to display."
      return redirect_to :action => 'index'
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
