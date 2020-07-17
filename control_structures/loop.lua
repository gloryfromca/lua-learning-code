--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/17
-- Time: 上午9:27
-- To change this template use File | Settings | File Templates.
--

-- while --
a = 1
while (a < 5)
do
    a = a + 1
    print(a <= 5)
end

function loop_n ()
    return 10;
end

-- for --
for i = loop_n(), 1, -1 do
    print(i >= 1)
end

b = {a=2, "b", "c"}
for i, v in ipairs(b) do
    print(i < 3)
    print(v == "b" or v == "c")
end

-- repeat --
c = 1
repeat
    print(c < 10)
    c = c + 1
until (c > 9)

-- break --
d = 1
while (d < 10) do
    d = d + 1
    if (d >= 5) then
        break
    end
end
print(d == 5)

-- goto --
e = 1
::a:: e = e + 1
if (e < 10) then
    goto a
end
print(e == 10)

-- continue --
f = 0
for i = 1, 10, 1 do
    if (i > 5) then
        goto continue
    end
    f = f + 1
    ::continue::
end
print(f == 5)

g = 0
for i = 1, 10, 1 do
    repeat
    if (g > 5) then
        break
    end
    g = g + 1
    until true
end
print(g == 6)
