defmodule Finnbot.Server do
  use GenServer

  require Logger

  def init(stack) do
    Logger.info("Init Points module with pid #{inspect(self())}")
    {:ok, stack}
  end

  def start_link(_) do
    GenServer.start_link(__MODULE__, %{}, name: :point)
  end

  def handle_call({:user_info, nick}, _from, state) do
  end
end