--
-- Created by IntelliJ IDEA.
-- User: zh
-- Date: 2020/7/22
-- Time: 上午10:27
-- To change this template use File | Settings | File Templates.
--

-- [[ LUA_PATH=/home/zh/test_lua/modules/mymath.lua ]] --

mymath = require("mymath")

print(localName == nil)
print(GlobalName == "zh_global")
print(addGlobalFunc(1, 1) == 2)
print(minusLocalFunc == nil)

print(mymath.add(1, 2) == 3)
print(mymath.minus(2, 1) == 1)
print(mymath.mul(1, 2) == 2)

print(mymath.name == "mymath")
mymath.name = "mymath1"
print(mymath.name == "mymath1")
