defmodule Finnbot.Commands do
  require Logger
  alias ExIRC.Client

  def receive(%{msg: msg, nick: nick, channel: channel, config: config}) do
    msg = String.trim(msg)
    func_check = Application.get_env(:finnbot, :coin_check)

    case get_command(msg, "salve") do
      true ->
        reply = "Salve @#{nick}!"
        send_message(config, reply)
      false ->
        :ok
    end

    case get_command(msg, "users") do
      true ->
        Logger.info(Client.names(config.client, config.channel))
      false ->
        :ok
    end

    case get_command(msg, func_check) do
      true ->
        reply = "@#{nick} você possui 0 #{func_check}"
        send_message(config, reply)
      false ->
        :ok
    end
  end

  def get_command(msg, cmd) do
    prefix = Application.get_env(:finnbot, :prefix)
    String.match?(msg, ~r/#{prefix}#{cmd}/)
  end

  defp send_message(config, reply) do
    Client.msg(config.client, :privmsg, config.channel, reply)
    console("Enviado: '#{reply}' no canal: #{config.channel}")
  end

  defp console(msg) do
    IO.puts IO.ANSI.blue() <> msg <> IO.ANSI.reset()
  end
end
