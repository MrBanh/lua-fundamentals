local function minmax(t)
	local min, max = nil, nil

	for _, v in ipairs(t) do
		min = (min and min < v and min) or v
		max = (max and max > v and max) or v
	end

	return min, max
end

local n = tonumber(io.read())
local nums = {}
for _ = 1, n do
	local input = tonumber(io.read())
	table.insert(nums, input)
end

local min, max = minmax(nums)
print(min .. " " .. max)
