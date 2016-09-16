defmodule Jank.Phoenix.DataSocket do
  @moduledoc """
  This is the Phoenix.Socket used by the Jank.Endpoint socket.
  """

  use Phoenix.Socket
  import Jank.Phoenix.DataChannel, only: [prefix: 0]

  channel "#{prefix}:*", Jank.Phoenix.DataChannel
  transport :websocket, Phoenix.Transports.WebSocket

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
