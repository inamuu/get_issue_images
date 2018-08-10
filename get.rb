require 'dotenv'
require 'octokit'

Dotenv.load ".env"
APIKEY = ENV["APIKEY"]

client = Octokit::Client.new(:access_token => "#{APIKEY}")
puts client.user["login"]