--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/20
-- Time: 上午9:38
-- To change this template use File | Settings | File Templates.
--

-- arithmetic operators --
a = 21
b = 10

print(a / b == 2.1)
print(a % b == 1)
print(b ^ 2 == 100)

-- relational operators --
c = 10
if (c ~= 11) then
    print(string.format("%d ~= 11", c))
end

if (c == 10) then
    print(string.format("%d == 10", c))
end

-- logical operators --
print((1 and 0) == 0)
print(("" or 1) == "")

print(not 1 == false)
print(not 0 == false)
print(not "" == false)

-- other operators --
print("a" .. "b" == "ab")
print(#"operator" == 8)

--[[
Operator Precedence:
^
not    - (unary)
*      /
+      -
..
<      >      <=     >=     ~=     ==
and
or
--]]