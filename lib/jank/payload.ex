defmodule Jank.Payload do
  @content_key :_content_
  @attributes_key :_attrs_

  @doc """
  Prepare payload for broadcasting

      iex> Payload.prepare(%{foo: "bar"})
      %{foo: "bar"}
      iex> Payload.prepare(foo: "bar")
      %{_attrs_: true, foo: "bar"}
      iex> Payload.prepare({"foo", bar: "baz"})
      %{_content_: "foo", _attrs_: %{_attrs_: true, bar: "baz"}}
      iex> Payload.prepare([{"foo", bar: "baz"}])
      [%{_content_: "foo", _attrs_: %{_attrs_: true, bar: "baz"}}]
      iex> Payload.prepare(%{foo: [bar: "baz"]})
      %{foo: %{_attrs_: true, bar: "baz"}}
  """
  def prepare({content, attributes}) do
    %{
      @content_key => prepare(content),
      @attributes_key => prepare(attributes),
    }
  end

  def prepare(data) when is_map(data) do
    Enum.reduce data, %{}, fn
      ({key, value}, map) -> Map.put(map, key, prepare(value))
    end
  end

  def prepare(data) when is_list(data) do
    if Keyword.keyword?(data) do
      Enum.into(data, %{})
      |> Map.put(@attributes_key, true)
    else
      Enum.map(data, &prepare/1)
    end
  end

  def prepare(data), do: data
end
