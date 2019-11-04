require "sinatra"

set :bind, "0.0.0.0" # This is a Docker container, after all.

visits = 0

get "/" do
  visits += 1

  [
    "The time is now #{Time.now.strftime("%I:%M%p")}.",
    "There have been #{visits} visits on this node.",
  ].join(" \n")
end
