local words = io.read()

local distinct = {}
for w in string.gmatch(words, "%S+") do
	distinct[w] = (distinct[w] or 0) + 1
end

local sorted = {}
for k, _ in pairs(distinct) do
	table.insert(sorted, k)
end
table.sort(sorted)

for _, k in ipairs(sorted) do
	print(k .. ": " .. distinct[k])
end
