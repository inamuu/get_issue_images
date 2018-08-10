require 'dotenv'
require 'octokit'

Dotenv.load ".env"
APIKEY = ENV["APIKEY"]
REPOS  = ENV["REPOS"]

issues = Octokit.list_issues("#{REPOS}")
client = Octokit::Client.new(:access_token => "#{APIKEY}")

puts issues[0]["title"]

comments = client.issue_comments("#{REPOS}", 2)
comments.each do |c|
  puts c.body
end