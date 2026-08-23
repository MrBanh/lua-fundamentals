local function stepper(t, k)
	local step = 1
	return function()
		local index = step * k
		if index <= #t then
			step = step + 1
			return index, t[index]
		end
	end
end

local n, k = io.read():match("(%d+)%s+(%d+)")
n, k = tonumber(n), tonumber(k)

local t = {}
for i = 1, n do
	t[i] = io.read()
end

for i, v in stepper(t, k) do
	print(i .. ":" .. v)
end
