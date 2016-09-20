defmodule Jank.PayloadTest do
  use ExUnit.Case, async: true
  alias Jank.Payload
  doctest Payload

  describe "prepare/1" do
    defmodule Foo do
      defstruct foo: nil
    end

    test "works with struct data" do
      assert Payload.prepare(%Foo{foo: "bar"}) == %{foo: "bar"}
    end
  end
end
