defmodule Finnbot.Commands do
  require Logger
  alias ExIRC.Client

  def receive(%{msg: msg, nick: nick, channel: channel, config: config}) do
    case String.contains?(msg, "hi") do
      true ->
        reply = "Hi #{nick}!"
        Client.msg config.client, :privmsg, config.channel, reply
        Logger.info "Sent #{reply} to #{config.channel}"
      false ->
        :ok
    end
  end
end
