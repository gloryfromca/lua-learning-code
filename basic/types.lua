--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/10
-- Time: 下午5:51
-- To change this template use File | Settings | File Templates.
--

-- type --
print(type(type) == "function")
print(type(type(X)) == "string")
print(type(type(true)) == "string")

-- nil --
print(type(nil) == "nil")
print(type(X) == "nil")

-- boolean --
print(type(true) == "boolean")
if (not nil) and 0 and (not false) then
    print("nil is false and 0 is true")
else
    print("nil is not false or 0 is false")
end

-- number --
print(type(2) == "number")
print(type(2.0) == "number")
print(type(2e+1) == "number")
print(2.0 == 2)

-- string --
string1 = "df"
print(string1)
print(#string1 == 2)
string2 = [[
<html>
    <body>TF</body>
</html>]]
print(string2)
print("2" .. "6" == "26")

-- type conversion --
print(("2" + "6") == 8)

-- table --
-- table is associative arrays --
local tb1 = {a=2, "12", c=6}
print(tb1[1] == "12")
print(tb1["a"] == 2)
print(tb1["c"] == 6)

for k, v in pairs(tb1) do
    print(k .. " : " .. v)
end

local tb2 = {}
for i=1, 10 do
    tb2[i] = i
end
print(tb2[10] == 10)
print(tb2["key"] == nil)

-- func --
function printTable(tb, k_v_join_func)
    for k, v in pairs(tb) do
        print(k_v_join_func(k, v))
        end
end

local tb3 = {a=1, "a", "c", d=2 }

printTable(tb3, function (key, value)
    return key ..  "=" .. value
end)
