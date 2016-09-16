defmodule Jank.Phoenix.DataChannel do
  @moduledoc """
  This is the Phoenix.Channel used by Jank.Phoenix.Socket.
  """

  use Phoenix.Channel

  @prefix "data"
  def prefix, do: @prefix

  def join("#{@prefix}:" <> _topic, _payload, socket) do
    {:ok, socket}
  end
end
