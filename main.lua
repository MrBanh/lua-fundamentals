local name = io.read()
local qty = tonumber(io.read())
local price = tonumber(io.read())

print(string.format("%s: %d @ $%.2f = $%.2f", name, qty, price, qty * price))
