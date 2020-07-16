--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/16
-- Time: 下午4:09
-- To change this template use File | Settings | File Templates.
--

-- local & global --
a = 5
function print_variables()
    local a = 1
    b = 2
    local c = 3
    print(a == 1, "a is local")
    print(b == 2)
    print(c == 3, "c is local")
end

print_variables()
print (a == 5, "a is global")
print(b == 2, "b is global")
print(c == nil, "c is local")

-- assignment --
a, b = 1, 2, 3
print(a == 1)
print(b == 2)

a, b = b, a
print(a == 2)
print(b == 1)

a = 1
a, b = a+1, a+1
print(a == 2, b == 2)

a, b, c = 1, 2
print(c == nil)

function return_double_value()
    return 1, 2
end
a, b = return_double_value()
print(a == 1)
print(b == 2)

-- index table --
site = {a=1}
print(site["a"] == site.a)
