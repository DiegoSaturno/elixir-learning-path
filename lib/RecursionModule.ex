defmodule Recursion do
    def print_n_times(msg, n) when n <= 1 do
        IO.puts msg
    end

    def print_n_times(msg, n) do 
        IO.puts msg
        print_n_times(msg, n - 1)
    end


    def sum_list([head | tail], acc) do
        sum_list(tail, head + acc)
    end

    def sum_list([], acc) do
        acc
    end
end