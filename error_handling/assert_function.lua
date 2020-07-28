--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 下午5:42
-- To change this template use File | Settings | File Templates.
--

function add(a, b)
    assert(type(a)== "number", "a is not a number");
    assert(type(b)== "number", "b is not a number");
    return a + b
end

print(add(1, 2) == 3)
add(1)
