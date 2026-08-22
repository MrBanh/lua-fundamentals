local n = tonumber(io.read())
for _ = 1, n do
	local line = io.read() or ""
	local num = line:match("%d+") or "none"
	local _, words = string.gsub(line, "%S+", " ")
	local stripped = string.gsub(line, "%p", "")
	print(num .. "|" .. words .. "|" .. stripped)
end
