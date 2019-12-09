defmodule FinnbotTest do
  use ExUnit.Case
  doctest Finnbot

  test "greets the world" do
    assert Finnbot.hello() == :world
  end
end
