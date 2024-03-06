defmodule Main do
    def oddeven(rows) do
         case rem(rows,2)==0 do
          true-> IO.puts("Even")
            false ->  IO.puts("Odd")
        end
        main()
    end
    def getnumber do
        IO.puts("Enter the number:")
        rows = String.trim(IO.gets(" |> ")) |> String.to_integer()
        if(rows == 0) do
        IO.puts("Thanks reach again")
        else 
        oddeven(rows)
        end
    end
    def main do
        getnumber()
    end   
end

Main.main() 
