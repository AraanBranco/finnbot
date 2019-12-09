defmodule Finnbot do
  use Application
  alias Finnbot.Bot

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = Application.get_env(:finnbot, :bots) |> Enum.map(fn bot -> worker(Bot, [bot]) end)
    
    opts = [strategy: :one_for_one, name: Finnbot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
