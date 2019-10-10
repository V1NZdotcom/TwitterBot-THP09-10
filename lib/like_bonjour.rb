 # ligne très importante qui appelle la gem.
require 'twitter'
require 'pry'

# n'oublie pas les lignes pour Dotenv ici…
require 'dotenv'
Dotenv.load

# quelques lignes qui appellent les clés d'API de ton fichier .env

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
  config.consumer_secret     = ENV["TWITTER_CONSUMER_SECRET"]
  config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
  config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
end

# ligne qui permet de tweeter sur ton compte

  tweets = client.favorite(client.search("#bonjour_monde", result_type: "recent").take(25))

    client.favorite(tweets)

  puts tweets

binding.pry