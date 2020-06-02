require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["CONSUMER_KEY"]
  config.consumer_secret     = ENV["CONSUMER_SECRET"]
  config.access_token        = ENV["ACCESS_TOKEN"]
  config.access_token_secret = ENV["ACCESS_SECRET"]
end

tweets = [
  "Did you wash your hands today? 🤔",
  "Go wash your hands! NOW!",
  "Pssst, Wash your hands!",
  "You know what? You should wash your hands!",
  "Why don't you get up and Wash your hands!",
  "Hey you! Wash your hands!",
  "Time to wash your hands!",
  "WASH YOUR HANDS!!!"
]

to_be_tweeted = tweets.sample
client.update(to_be_tweeted)
puts to_be_tweeted