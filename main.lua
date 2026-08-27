local function divide(a, b)
	if b == 0 then
		error("division by zero", 0)
	end
	return a / b
end

local function parse(raw)
	-- pull two numbers out of raw with tonumber
	local parsed_a, parsed_b = string.match(raw, "(-?%d+)%s+(-?%d+)")
	local a, b = tonumber(parsed_a), tonumber(parsed_b)

	if not a or not b then
		error("not two numbers: " .. raw, 0)
	end

	return a, b
end

local n = tonumber(io.read())
for _ = 1, n do
	local raw = io.read() or ""

	local ok, res = pcall(function()
		local a, b = parse(raw)
		local res = divide(a, b)
		return res
	end)

	print(ok and string.format("ok: %.2f", res) or ("error: " .. res))
end
