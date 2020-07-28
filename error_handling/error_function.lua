--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/28
-- Time: 下午5:49
-- To change this template use File | Settings | File Templates.
--

function minus(a, b)
    if (type(a) ~= "number") then
        error("a is not a number", 1);
    end
    if (type(b) ~= "number") then
        error("b is not a number", 1);
    end
    return a - b
end

print(minus(1, 2) == -1)
minus(1)
