--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/22
-- Time: 上午10:42
-- To change this template use File | Settings | File Templates.
--

local localName = "zh_local"
GlobalName = "zh_global"

function addGlobalFunc(a, b)
    return a + b
end

local function minusLocalFunc(a, b)
    return a - b
end

local mymath = {}

function mymath.add(a, b)
    return addGlobalFunc(a, b)
end

function mymath.minus(a, b)
    return minusLocalFunc(a, b)
end

function mymath.mul(a, b)
    return a * b;
end

mymath.name = "mymath"

return mymath

