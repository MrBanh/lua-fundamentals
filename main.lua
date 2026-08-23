local defaults = { colour = "black", size = "1" }
local config = setmetatable({}, { __index = defaults })

local count = tonumber(io.read())
for _ = 1, count do
	local command, key, val = io.read():match("^(%u+)%s+(%a+)%s*(.*)$")

	if command == "GET" then
		local stored_val = config[key]
		if not stored_val then
			print(key .. "=none")
		else
			local ownership = rawget(config, key) and "own" or "default"
			print(key .. "=" .. stored_val .. " (" .. ownership .. ")")
		end
	elseif command == "SET" then
		config[key] = val
	end
end
