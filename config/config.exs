use Mix.Config

config :finnbot, bots: [
  %{
    :server => "irc.chat.twitch.tv",
    :port => 6667,
    :nick => "Finnb0t_",
    :user => "Finnb0t_",
    :name => "Finnb0t_",
    :pass => "oauth:token", # For you get token, access: https://twitchapps.com/tmi/
    :channel => "#you-channel"
  }
]