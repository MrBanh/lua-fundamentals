local input = io.read()

local words = {}
for word in string.gmatch(input, "%S+") do
	table.insert(words, word)
end

local res = {}
for i = #words, 1, -1 do
	table.insert(res, words[i])
end

print(table.concat(res, " "))
