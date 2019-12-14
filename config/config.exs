use Mix.Config

config :finnbot,
  prefix: "!",
  coin_name: "beer",
  coin_check: "beers"

config :finnbot, bots: [
  %{
    :server => "irc.chat.twitch.tv",
    :port => 6667,
    :nick => "Finnb0t_",
    :user => "Finnb0t_",
    :pass => "oauth:qfhgnw0h72weqvc6ig2x2mpzfr7vo5", # For you get token, access: https://twitchapps.com/tmi/
    :channel => "#gaules"
  }
]