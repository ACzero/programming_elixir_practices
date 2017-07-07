prefix = fn pre ->
            fn other ->
               "#{pre} #{other}"
            end
         end

mrs = prefix.("Mrs")
IO.puts mrs.("Smith")
IO.puts prefix.("Elixir").("Rocks")
