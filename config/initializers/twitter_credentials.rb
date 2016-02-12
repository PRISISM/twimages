require 'twitter'

# twitter = Twitter.configure do |config|
#   config.consumer_key = 'UnS4RLlfnA8jSqckNYzYReu5W'
#   config.consumer_secret = 'o8MHGErwcmJMH7lNoqOq8XP1BweuL2V4oBkIhwcfMrrIzFBZGO'
#   config.access_token = '74698390-UfUN9Dt5gauPWVjYjKP1xrH3n980lCJvKxkgX5vfZ'
#   config.access_token_secret = 'pXb9yokpH9Y8pwdz4g6EXM035NJORfRQAnMiAaSRouUkd'
# end

$twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'UnS4RLlfnA8jSqckNYzYReu5W'
  config.consumer_secret = 'o8MHGErwcmJMH7lNoqOq8XP1BweuL2V4oBkIhwcfMrrIzFBZGO'
  config.access_token = '74698390-UfUN9Dt5gauPWVjYjKP1xrH3n980lCJvKxkgX5vfZ'
  config.access_token_secret = 'pXb9yokpH9Y8pwdz4g6EXM035NJORfRQAnMiAaSRouUkd'
end