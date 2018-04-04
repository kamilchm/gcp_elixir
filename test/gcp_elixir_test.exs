defmodule GcpElixirTest do
  use ExUnit.Case
  doctest GcpElixir

  test "greets the world" do
    assert GcpElixir.hello() == :world
  end
end
