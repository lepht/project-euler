cur = 1
prev = 1
total = 0

while cur < 4_000_000 do
    total += cur if cur.even?
    cur, prev = cur + prev, cur
end

puts total
