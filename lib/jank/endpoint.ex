defmodule Jank.Endpoint do
  @moduledoc """
  Use this module as an extension to add a Jank data socket to your Phoenix.Endpoint.

      defmodule YourApp.Endpoint
        # ...
        use Jank.Endpoint
        # ...
      end
  """

  defmacro __using__(_) do
    quote do
      # TODO make socket configurable
      socket "/jank", Jank.Phoenix.DataSocket
    end
  end
end
