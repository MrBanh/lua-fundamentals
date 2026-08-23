local n = tonumber(io.read())
local nums = {}
for i = 1, n do
	table.insert(nums, tonumber(io.read()))
end

local sum = 0
for _, v in ipairs(nums) do
	sum = sum + v
end

print(sum)
