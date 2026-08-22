local n = tonumber(io.read())

for i = 1, 10 do
	print(string.format("%d x %d = %d", n, i, n * i))
end
