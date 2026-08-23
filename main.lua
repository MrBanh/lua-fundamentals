local Stack = {}
Stack.__index = Stack

function Stack.new()
	return setmetatable({}, Stack)
end

function Stack:push(v)
	table.insert(self, v)
end

function Stack:pop()
	return table.remove(self, #self)
end

function Stack:size()
	return #self
end

local stacks = { a = Stack.new(), b = Stack.new() }

local n = tonumber(io.read())

for _ = 1, n do
	local line = io.read() or ""
	local cmd, name, value = line:match("^(%u+)%s+(%a+)%s*(.*)$")
	local stack = stacks[name]
	if cmd == "PUSH" then
		stack:push(value)
	elseif cmd == "POP" then
		local popped = stack:pop()
		print(popped or "empty")
	elseif cmd == "SIZE" then
		local size = stack:size()
		print(size)
	end
end
