local textkit = {}

function textkit.upper(s)
	return string.upper(s)
end
function textkit.words(s) -- how many whitespace-separated words s has
	local _, r = string.gsub(s, "%S+", "_")
	return r
end
function textkit.rev(s) -- the words of s in reverse order, single-spaced
	local words = {}
	for w in string.gmatch(s, "(%S+)") do
		table.insert(words, w)
	end

	local reversed = {}
	for i = #words, 1, -1 do
		table.insert(reversed, words[i])
	end

	return table.concat(reversed, " ")
end

local n = tonumber(io.read())
local keys = {}
for _ = 1, n do
	local line = io.read() or ""
	local op, text = line:match("^(%S+)%s*(.*)$")
	local fn = textkit[op]
	if fn == nil then
		print("no such function: " .. op)
	else
		table.insert(keys, op)
		print(fn(text))
	end
end

table.sort(keys)
print("exports: " .. table.concat(keys, ", "))

return textkit
