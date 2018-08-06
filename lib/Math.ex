defmodule Math do
    def sum(a, b) do
        private_sum(a, b)
    end

    def square(a) do
        a * a
    end 

    def sumPlusThree(value) do
        value + 3
    end

    defp private_sum(a, b) do #private function
        a + b
    end
 end