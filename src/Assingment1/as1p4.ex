
#The fact that there is no return types seems weird to me.
testFunction = fn (int1, int2, int3) ->
  int1 * int2 * int3
end

#This seems like I should do it with lists to make it scalable but quite frankly I looked into loops
#Saw it was 5 times the work and gave up it is only 3 numbers for now after all. For longer list though loops
inputInt1 = IO.gets("please give a number") |> String.trim() |> String.to_integer()
inputInt2 = IO.gets("please give a number") |> String.trim() |> String.to_integer()
inputInt3 = IO.gets("please give a number") |> String.trim() |> String.to_integer()

IO.puts(testFunction.(inputInt1, inputInt2, inputInt3))

#Should concat 2 lists together
addTwolistsTogether = fn list1, list2 ->
  list1 ++ list2
end

contactedLists = addTwolistsTogether.([1,2,3], [4,5,6])

#Writes the concated lists to the devide IO.puts does not work for somereason even though both are supposed to write type item.
IO.inspect(contactedLists)

#reminder that atoms need : to work
testTuple = {:ok, :fail}

testTupleWithMoreData = Tuple.append(testTuple, :cancelled)

IO.inspect(testTupleWithMoreData)
