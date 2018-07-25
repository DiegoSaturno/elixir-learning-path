IO.puts "Hello world!"
IO.puts div(10, 2)
IO.puts rem(30, 4)
IO.puts 0xF
IO.puts 2.5e2 #Notação científica

#Funções
add = fn a, b ->
    a + b
end
IO.puts add.(4, 5)
a = 19
IO.puts (fn -> a = 5 end).()
IO.puts a

#Lists
list = [1, 5, 39, 23, 18] ++ [1, 5, 20, 45, 39]
IO.inspect list
IO.puts hd(list) #Elemento cabeça da lista
IO.inspect tl(list) #O restante da lista

# Tuplas
tuple = {1, "Test"}
IO.inspect tuple
IO.puts elem(tuple, 1)
newTuple = put_elem(tuple, 1, "Elixir")
IO.inspect tuple
IO.inspect newTuple

#Tuplas vs Listas
#Tuplas são mais caras para se alterar, pois são imutáveis e criam uma nova tupla na memória, porém são mais rápidas para acessar por índice.

#Files
file = File.read("../files/text.json")

#Atoms
atom = :ok
IO.puts is_atom(atom)

#Strings
concat = "Teste" <> " Elixir"
IO.puts concat

IO.puts true and true
IO.puts true and false

#Usar and, or e not quando os argumentos forem booleanos. Caso contrário, usar &&, || e !


#Pattern Matching (verifica um padrão entre os dois lados)
{a, b, c} = {"Teste", "Elixir", 0xFFFF} #Pode ser usado pra desestruturar estruturas mais complexas, como a tupla a seguir.
IO.puts a
IO.puts b
IO.puts c

x = 1
IO.puts 1 = x

#Case, cond, /if
#Case: permite comparar um valor em vários padrões até chegar em um resultado
tupleToTest = {"Teste", "Elixir", 0x7FAB}
case tupleToTest do
    {"Teste", x, 0x7FAB} ->
        IO.puts "O padrão bate e x sera bindado para 'Elixir' nesta clasula."
        
    {1, 2, 3} ->
        IO.puts "O padrão não é detectado"
    _ ->
        IO.puts "Esta cláusula aceita qualquer valor e bate."
end

var = 10
case var do
    ^x -> IO.puts "Não bate" #Verifica se bate com o conteúdo da variável x
    _  -> IO.puts "Bate"
end
x = 10
if x == 10 do
    IO.puts "Verdadeiro"
end

unless x == 11 do
    IO.puts "Unless!"
end

test = fn x, y ->
    if x + y == 3, do: (
        IO.puts "x + y = 3"
    )
end

test.(1, 2)

# Keyword lists and maps
keywordList = [{:teste, [{:chave, "valor"}]}, {:b, 2}, {:c, 3}]
IO.inspect keywordList

tupleToAppend = [{:chave2, "valor2"}]
newKeywordList = keywordList ++ tupleToAppend

IO.inspect newKeywordList

IO.puts Math.sumPlusThree(2)










