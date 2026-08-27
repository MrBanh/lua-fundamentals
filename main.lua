local function build()
	local n = tonumber(io.read())

	if not n or n < 1 then
		error("bad line count", 0)
	end

	local index = {}
	for lineno = 1, n do
		---@type string
		local line = io.read() or ""
		local normalized_line = line:lower()

		for w in string.gmatch(normalized_line, "%a+") do
			if not index[w] then
				index[w] = {}
			end

			local hit = index[w]

			if #hit == 0 or hit[#hit] ~= lineno then
				table.insert(hit, lineno)
			end
		end
	end
	return index
end

local ok, result = pcall(build)
if not ok then
	print("error: " .. result)
else
	-- collect result's keys, sort them, and print "<word>: <line numbers>"
	local words = {}
	for k, _ in pairs(result) do
		table.insert(words, k)
	end
	table.sort(words)

	for _, w in ipairs(words) do
		print(w .. ": " .. table.concat(result[w], " "))
	end
end
