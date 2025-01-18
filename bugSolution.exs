```elixir
list = [1, 2, 3, 4, 5]

try do
  Enum.each(list, fn x ->
    if x == 3 do
      throw(:exit)
    end
    IO.puts(x)
  end)
catch
  :exit -> IO.puts("Process exited gracefully")
end

# Alternative solution without try-catch
Enum.each(list, fn x ->
  if x != 3 do
    IO.puts(x)
  end
end)
```