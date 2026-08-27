local function counter(start)
	local n = start
	return function()
		local returned_val = n
		n = n + 1
		return returned_val
	end
end

local start = tonumber(io.read())
local n = tonumber(io.read())
local c = counter(start)

for _ = 1, n do
	local res = c()
	print(res)
end
