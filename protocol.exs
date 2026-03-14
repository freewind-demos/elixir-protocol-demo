# Elixir Protocol
defprotocol Size do
  def size(data)
end

defimpl Size, for: BitString do
  def size(string), do: byte_size(string)
end

IO.puts(Size.size("hello"))
